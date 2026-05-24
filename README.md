## Item history widget (extended)

![](doc/itemhistory.png)

This widget extends the standard Zabbix _Item history_ widget by adding a **Post-Replace HTML** option.  
It allows matching against HTML-escaped item values using regular expressions and replacing matched content with custom HTML for advanced styling and formatting.

[![Latest Release](https://img.shields.io/github/v/release/gr8b/zuw-extended-itemhistory)](https://github.com/gr8b/zuw-extended-itemhistory/releases)

### How it works

1. Item values are HTML-escaped by the widget.
2. The configured regular expression is applied to the escaped value.
3. Matching text is replaced using the provided replacement string.
4. The replacement output is rendered as raw HTML.

This enables custom visual formatting such as colored labels, badges, icons, and status indicators.

### Usage

Configure the following fields:

- **Expression** - Regular expression used to match content in the escaped item value.
- **Replace** - Replacement string that may contain HTML markup and regex capture groups.

|Expression  |Replace  |Description  |
|------------|---------|-------------|
|`(ok)` |`<span class="status-green">$1</span>` |Display `ok` with green status styling. |
|`(warning)` |`<span class="status-yellow">$1</span>` |Display warnings with yellow styling. |

### Notes

- Matching is performed against the **HTML-escaped** item value.
- Replacement output is inserted as **raw HTML**.
- Regex capture groups such as `$1`, `$2`, etc. are supported.
- Ensure generated HTML is valid and trusted.

### How to install

Download and extract the latest release into the Zabbix frontend modules directory:

```bash
cd /usr/share/zabbix/modules

curl -L \
  https://github.com/gr8b/zuw-extended-itemhistory/releases/latest/download/zuw-extended-itemhistory.zip \
  -o zuw-extended-itemhistory.zip

unzip zuw-extended-itemhistory.zip -d zuw-extended-item-history
```
After extraction, enable the module in the Zabbix frontend:

- Open "_Administration → General → Modules_"
- Locate "_Item history widget (extended)_"
- Click Enable

### Useful links

- Zabbix Item history widget documentation:  
  https://www.zabbix.com/documentation/7.0/en/manual/web_interface/frontend_sections/dashboards/widgets/item_history

- Regex testing tool:
  https://regex101.com/