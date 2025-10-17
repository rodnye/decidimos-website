# decidimos ⚠️ ARCHIVED

> **Note:** This repository has been migrated to [cujaeredsocial/decidimos-website](https://github.com/cujaeredsocial/decidimos-website)

![Status](https://img.shields.io/badge/Status-Archived-lightgrey)
![Migrated](https://img.shields.io/badge/Migrated-cujaeredsocial%2Fdecidimos--website-blue)

## About

Free Open-Source participatory democracy, citizen participation and open government for cities and organizations.

This was the open-source repository for decidimos, based on [Decidim](https://github.com/decidim/decidim).

## New Location

This project has been moved to our main organization repository:

### ➡️ [cujaeredsocial/decidimos-website](https://github.com/cujaeredsocial/decidimos-website)

Please update your bookmarks and references to the new repository location. All future development, issues, and pull requests should be directed to the new repository.

---

*The following original README content is preserved for historical reference:*

## Original Setup Instructions

### Setting up the application

Startup command:

```bash
bin/rails assets:precompile
```

You will need to do some steps before having the app working properly once you have deployed it:

1. Create a System Admin user: `bin/rails decidim_system:create_admin`
2. Visit `<your app url>/system` and log in with your system admin credentials
3. Create a new organization. Check the locales you want to use for that organization, and select a default locale.
4. Set the correct default host for the organization, otherwise the app will not work properly. Note that you need to include any subdomain you might be using.
5. Fill the rest of the form and submit it.

You are good to go!
