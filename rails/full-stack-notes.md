# Full-Stack

## When uploading Rails Projects to Github
- You do not want a repo  uploaded into a repo

- `rails new full-stack-rails -d postgresql -T`
- `cd full-stack-rails`
- `rails db:create`
- `git remote add origin https://github.com/jennerdulce/ruby-fullstack-test.git`
- `git checkout -b main`
- `git add .`
- `git commit -m "Initialization"`
- `git push origin main`
- `git checkout -b branch-name`

## RESTful Routes

- CRUD
    - HTTP Verb
        - Routes

- Create
    - Post
        - Create
- Read
    - Get
        - Index (all things)
        - Show (one thing)
        - New (form)
        - Get (form)
- Update
    - Put
        - Update
    - Patch
        - Update
- Delete
    - Delete
        - Destory

![Routes](./routes.png)