# Vault Cheat Sheet

 
<h2>Vault Commands Cheat Sheet</h2>
<h3>Secrets Management</h3>
<table>
<thead>
<tr>
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>vault kv put</code></td>
<td>Creates or updates a key-value pair in a secret backend.</td>
</tr>
<tr>
<td><code>vault kv get</code></td>
<td>Retrieves the value of a specific key in a secret backend.</td>
</tr>
<tr>
<td><code>vault kv delete</code></td>
<td>Deletes a key-value pair from a secret backend.</td>
</tr>
<tr>
<td><code>vault kv list</code></td>
<td>Lists all keys in a secret backend.</td>
</tr>
<tr>
<td><code>vault kv metadata get</code></td>
<td>Retrieves the metadata of a specific key in a secret backend.</td>
</tr>
<tr>
<td><code>vault kv metadata delete</code></td>
<td>Deletes the metadata of a specific key in a secret backend.</td>
</tr>
<tr>
<td><code>vault kv metadata list</code></td>
<td>Lists the metadata for all keys in a secret backend.</td>
</tr>
<tr>
<td><code>vault kv enable-versioning</code></td>
<td>Enables versioning for a secret backend.</td>
</tr>
<tr>
<td><code>vault kv disable-versioning</code></td>
<td>Disables versioning for a secret backend.</td>
</tr>
<tr>
<td><code>vault kv undelete</code></td>
<td>Restores a deleted key-value pair in a secret backend.</td>
</tr>
<tr>
<td><code>vault kv destroy</code></td>
<td>Permanently removes a key-value pair in a secret backend.</td>
</tr>
<tr>
<td><code>vault kv undelete-metadata</code></td>
<td>Restores a deleted key's metadata in a secret backend.</td>
</tr>
<tr>
<td><code>vault kv destroy-metadata</code></td>
<td>Permanently removes a key's metadata in a secret backend.</td>
</tr>
</tbody>
</table>
<h3>Authentication</h3>
<table>
<thead>
<tr>
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>vault login</code></td>
<td>Authenticates a user to Vault.</td>
</tr>
<tr>
<td><code>vault logout</code></td>
<td>Logs out the currently authenticated user.</td>
</tr>
<tr>
<td><code>vault token create</code></td>
<td>Creates a new token for authentication.</td>
</tr>
<tr>
<td><code>vault token revoke</code></td>
<td>Revokes a token, rendering it invalid.</td>
</tr>
<tr>
<td><code>vault token lookup</code></td>
<td>Retrieves information about a token.</td>
</tr>
<tr>
<td><code>vault token renew</code></td>
<td>Renews the lease of a token, extending its validity period.</td>
</tr>
<tr>
<td><code>vault token revoke-prefix</code></td>
<td>Revokes all tokens with a given prefix.</td>
</tr>
<tr>
<td><code>vault auth enable</code></td>
<td>Enables an authentication method in Vault.</td>
</tr>
<tr>
<td><code>vault auth disable</code></td>
<td>Disables an authentication method in Vault.</td>
</tr>
<tr>
<td><code>vault auth list</code></td>
<td>Lists all enabled authentication methods in Vault.</td>
</tr>
</tbody>
</table>
<h3>Policies</h3>
<table>
<thead>
<tr>
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>vault policy write</code></td>
<td>Creates or updates a policy with the specified name.</td>
</tr>
<tr>
<td><code>vault policy read</code></td>
<td>Retrieves the contents of a policy.</td>
</tr>
<tr>
<td><code>vault policy delete</code></td>
<td>Deletes a policy.</td>
</tr>
<tr>
<td><code>vault policy list</code></td>
<td>Lists all policies in Vault.</td>
</tr>
<tr>
<td><code>vault policy capabilities</code></td>
<td>Displays the capabilities of a policy.</td>
</tr>
<tr>
<td><code>vault write auth/token/roles/my-role</code></td>
<td>Creates or updates a token role.</td>
</tr>
<tr>

<td></td>
</tr>
<h3>Secrets Engines</h3>
<table>
<thead>
<tr>
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>vault secrets enable</code></td>
<td>Enables a secrets engine in Vault.</td>
</tr>
<tr>
<td><code>vault secrets disable</code></td>
<td>Disables a secrets engine in Vault.</td>
</tr>
<tr>
<td><code>vault secrets list</code></td>
<td>Lists all enabled secrets engines in Vault.</td>
</tr>
<tr>
<td><code>vault secrets tune</code></td>
<td>Adjusts the configuration of a secrets engine.</td>
</tr>
<tr>
<td><code>vault secrets move</code></td>
<td>Moves a secrets engine from one path to another.</td>
</tr>
<tr>
<td><code>vault secrets migrate</code></td>
<td>Migrates secrets from one secrets engine to another.</td>
</tr>
<tr>
<td><code>vault secrets upgrade</code></td>
<td>Upgrades the version of a secrets engine.</td>
</tr>
<tr>
<td><code>vault secrets path-help</code></td>
<td>Displays help information for a secrets engine's path.</td>
</tr>
</tbody>
</table>
<h3>Auditing and Logging</h3>
<table>
<thead>
<tr>
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>vault audit enable</code></td>
<td>Enables an audit device in Vault to log events.</td>
</tr>
<tr>
<td><code>vault audit disable</code></td>
<td>Disables an audit device in Vault.</td>
</tr>
<tr>
<td><code>vault audit list</code></td>
<td>Lists all enabled audit devices in Vault.</td>
</tr>
<tr>
<td><code>vault audit hash</code></td>
<td>Hashes a single audit log file for integrity verification.</td>
</tr>
<tr>
<td><code>vault audit recover</code></td>
<td>Recovers and replays the audit log from a specified path.</td>
</tr>
<tr>
<td><code>vault audit migrate</code></td>
<td>Migrates audit devices from one path to another.</td>
</tr>
<tr>
<td><code>vault audit purge</code></td>
<td>Purges audit log files from a specified path.</td>
</tr>
<tr>
<td><code>vault monitor</code></td>
<td>Monitors the activity of secrets engines and authentication requests in real-time.</td>
</tr>
<tr>
<td><code>vault read sys/audit-hash</code></td>
<td>Retrieves the current hash of the audit log file.</td>
</tr>
</tbody>
</table>
<h3>Key Management</h3>
<table>
<thead>
<tr>
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>vault operator init</code></td>
<td>Initializes a new Vault instance with a master key share.</td>
</tr>
<tr>
<td><code>vault operator unseal</code></td>
<td>Unseals the Vault by providing a master key share.</td>
</tr>
<tr>
<td><code>vault operator seal</code></td>
<td>Seals the Vault, making it inaccessible.</td>
</tr>
<tr>
<td><code>vault operator rekey</code></td>
<td>Rekeys the Vault, rotating the encryption keys.</td>
</tr>
<tr>
<td><code>vault operator rotate</code></td>
<td>Rotates the underlying encryption keys for the transit secrets engine.</td>
</tr>
<tr>
<td><code>vault operator generate-root</code></td>
<td>Generates a new root token for disaster recovery.</td>
</tr>
<h3>Miscellaneous</h3>
<thead>
<tr>
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>vault status</code></td>
<td>Displays the current status of the Vault.</td>
</tr>
<tr>
<td><code>vault version</code></td>
<td>Displays the version information of the running Vault server.</td>
</tr>
<tr>
<td><code>vault list sys/mounts</code></td>
<td>Lists all the mounted secret backends.</td>
</tr>
<tr>
<td><code>vault auth token/lookup-self</code></td>
<td>Retrieves information about the currently authenticated token.</td>
</tr>
<tr>
<td><code>vault auth token/revoke-self</code></td>
<td>Revokes the currently authenticated token.</td>
</tr>
<tr>
<td><code>vault path-help</code></td>
<td>Displays help information for a specific Vault path.</td>
</tr>
<tr>
<td><code>vault policy validate</code></td>
<td>Validates the syntax of a policy without saving it.</td>
</tr>
<tr>
<td>`vault secrets</td>
<td></td>
</tr>
</tbody>
</table>
