#!/usr/bin/env python3
import shutil
import smtplib
from email.mime.text import MIMEText

def send_alert(subject, body, to_email):
    msg = MIMEText(body)
    msg['Subject'] = subject
    msg['From'] = 'alert@example.com'
    msg['To'] = to_email

    try:
        with smtplib.SMTP('localhost') as server:
            server.send_message(msg)
        print(f"Alert sent to {to_email}.")
    except Exception as e:
        print(f"Failed to send alert: {e}")

def check_disk_usage(threshold, alert_email):
    total, used, free = shutil.disk_usage('/')
    disk_usage_percent = (used / total) * 100

    print(f"Disk usage is at {disk_usage_percent:.2f}%")
    if disk_usage_percent > threshold:
        send_alert(
            subject="Disk Usage Alert",
            body=f"Disk usage has exceeded the threshold. Current usage is {disk_usage_percent:.2f}%",
            to_email=alert_email
        )

def main():
    try:
        threshold = float(input("Enter the disk usage threshold percentage (e.g., 85): ").strip())
        alert_email = input("Enter the email address to send alerts to: ").strip()
    except ValueError:
        print("Invalid input. Please enter a valid number for the threshold.")
        return

    check_disk_usage(threshold, alert_email)

if __name__ == "__main__":
    main()
