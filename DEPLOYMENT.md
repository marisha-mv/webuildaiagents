# Deployment Instructions for We Build AI Agents

## Step 1: Repository Already Exists

The repository at https://github.com/marisha-mv/webuildaiagents is already created and ready to use.

## Step 2: Initialize Git and Push Your Code

Run these commands to push your code:

```bash
cd "/Users/marisha/Documents/We Conquer Media/webuildaiagents"
git init
git add .
git commit -m "Initial commit - We Build AI Agents brand showcase"
git branch -M main
git remote add origin https://github.com/marisha-mv/webuildaiagents.git
git push -u origin main
```

Or use the provided push script:
```bash
chmod +x push-to-github.sh
./push-to-github.sh
```

## Step 3: Enable GitHub Pages

1. Go to your repository: https://github.com/marisha-mv/webuildaiagents
2. Click on **Settings** tab
3. Scroll down to **Pages** in the left sidebar
4. Under **Source**, select:
   - Branch: `main`
   - Folder: `/ (root)`
5. Click **Save**

## Step 4: Configure Custom Domain (Optional)

If you have a custom domain:

1. Still in the **Pages** settings
2. Under **Custom domain**, enter your domain (e.g., `webuildaiagents.com`)
3. Check **Enforce HTTPS** (this will be available after DNS is configured)
4. Click **Save**

## Step 5: Configure DNS (If Using Custom Domain)

Go to your domain registrar and add these DNS records:

### Option 1: CNAME Record (Recommended)
- **Type**: CNAME
- **Name**: @ (or leave blank for root domain)
- **Value**: `marisha-mv.github.io`
- **TTL**: 3600 (or default)

### Option 2: A Records (Alternative)
If your registrar doesn't support CNAME for root domain, use these A records:

- **Type**: A
- **Name**: @ (or leave blank)
- **Value**: `185.199.108.153`
- **TTL**: 3600

- **Type**: A
- **Name**: @
- **Value**: `185.199.109.153`
- **TTL**: 3600

- **Type**: A
- **Name**: @
- **Value**: `185.199.110.153`
- **TTL**: 3600

- **Type**: A
- **Name**: @
- **Value**: `185.199.111.153`
- **TTL**: 3600

## Step 6: Wait for DNS Propagation

DNS changes can take anywhere from a few minutes to 48 hours to propagate. Once it's done:

1. GitHub will automatically detect your custom domain
2. You'll see a green checkmark in the Pages settings
3. You can enable **Enforce HTTPS**

## Verification

After deployment, your site will be live at:
- https://marisha-mv.github.io/webuildaiagents
- Or your custom domain if configured

## Troubleshooting

- If the site doesn't load, check DNS propagation: https://www.whatsmydns.net/
- Make sure the CNAME file is in the root of your repository (if using custom domain)
- Verify GitHub Pages is enabled and shows "Your site is live at..."
- Check that your domain is verified in GitHub Pages settings

