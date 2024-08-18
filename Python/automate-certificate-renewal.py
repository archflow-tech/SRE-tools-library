#!/usr/bin/env python3
import subprocess

def run_command(command):
    result = subprocess.run(command, shell=True, text=True, capture_output=True)
    if result.returncode != 0:
        print(f"Command failed: {result.stderr}")
    else:
        print(result.stdout)

def create_user(username, password):
    try:
        # Create the user without a password and then set the password
        run_command(f"adduser --quiet --disabled-password --gecos '' {username}")
        run_command(f"echo '{username}:{password}' | chpasswd")
        print(f"User {username} created successfully.")
    except Exception as e:
        print(f"Failed to create user {username}: {e}")

def delete_user(username):
    try:
        run_command(f"userdel -r {username}")
        print(f"User {username} deleted successfully.")
    except Exception as e:
        print(f"Failed to delete user {username}: {e}")

def main():
    action = input("Do you want to create or delete a user? (create/delete): ").strip().lower()
    
    if action not in ['create', 'delete']:
        print("Invalid action. Please choose 'create' or 'delete'.")
        return

    username = input("Enter the username: ").strip()
    
    if action == 'create':
        password = input("Enter the password for the new user: ").strip()
        create_user(username, password)
    elif action == 'delete':
        delete_user(username)

if __name__ == "__main__":
    main()
