# Contact Form Setup Instructions

## Overview

The contact form uses **FormSubmit** (https://formsubmit.co), which is a free service that works perfectly with static websites on GitHub Pages. No backend required!

## Setup Steps

### Step 1: Update Email Address

1. Open `index.html`
2. Find the contact form (around line 489)
3. Locate this line:
   ```html
   <form id="contact-form" action="https://formsubmit.co/YOUR_EMAIL@example.com" method="POST" ...>
   ```
4. Replace `YOUR_EMAIL@example.com` with your actual email address
   ```html
   <form id="contact-form" action="https://formsubmit.co/contact@mailhubai.com" method="POST" ...>
   ```

### Step 2: Verify Email (First Time Only)

1. After updating the email address, deploy to GitHub Pages
2. Submit a test message through the form
3. Check your email inbox for a verification email from FormSubmit
4. Click the verification link in the email
5. After verification, all future form submissions will be delivered directly to your inbox

### Step 3: Optional Configuration

You can customize the form behavior by modifying the hidden input fields:

```html
<!-- Change the email subject line -->
<input type="hidden" name="_subject" value="New Contact Form Submission from MailHubAI Website">

<!-- Redirect to a thank you page (optional) -->
<input type="hidden" name="_next" value="https://yourusername.github.io/mailhubai/thank-you.html">

<!-- Disable captcha (already set) -->
<input type="hidden" name="_captcha" value="false">

<!-- Use a different email template -->
<input type="hidden" name="_template" value="box">
<!-- Options: box, table, basic, or leave empty for default -->
```

## How It Works

1. User fills out the form and clicks "Send Message"
2. Form data is sent to FormSubmit's API
3. FormSubmit sends an email to your configured address
4. User sees a success message
5. You receive the email with all form data

## Features

- ✅ **Free** - No cost for basic usage
- ✅ **No Backend Required** - Works with static sites
- ✅ **No Account Needed** - Just verify your email once
- ✅ **Spam Protection** - Built-in spam filtering
- ✅ **Email Formatting** - Clean, readable email format
- ✅ **JavaScript Handling** - Smooth user experience with loading states

## Alternative: Formspree

If you prefer Formspree instead:

1. Sign up at https://formspree.io
2. Create a new form
3. Get your form ID (e.g., `xrgkjqyz`)
4. Update the form action:
   ```html
   <form action="https://formspree.io/f/xrgkjqyz" method="POST">
   ```
5. Remove the FormSubmit-specific hidden inputs
6. Formspree requires account setup but offers more features (webhooks, integrations, etc.)

## Troubleshooting

### Form not sending emails
- Check that you've replaced `YOUR_EMAIL@example.com` with your actual email
- Verify your email address with FormSubmit (check spam folder for verification email)
- Check browser console for JavaScript errors

### Emails going to spam
- Add FormSubmit's email to your contacts
- Check spam/junk folder
- Consider using a custom domain email address

### Form validation not working
- Ensure JavaScript is enabled in the browser
- Check browser console for errors
- Verify Bootstrap JavaScript is loaded

## Security Notes

- FormSubmit includes built-in spam protection
- No sensitive data should be collected through this form
- For sensitive information, consider using a more secure solution
- The form uses HTTPS for secure transmission

## Rate Limits

FormSubmit free tier:
- 50 submissions per month
- If you need more, consider upgrading or using Formspree

For higher volume, consider:
- Formspree paid plans
- Netlify Forms (if using Netlify)
- Custom backend solution

