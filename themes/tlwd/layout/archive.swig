<main class="space-y-6">
  {% for post in page.posts %}
    <div>
      <a href="{{ url_for(post.path) }}" class="flex items-center hover:text-accent">
        <h1 class="text-xl lg:text-2xl font-light leading-tight flex-1">{{ post.title }}</h1>
        <div class="text-accent text-sm pl-4">{{ date(post.date, config.date_format) }}</div>
      </a>
    </div>
  {% endfor %}
</main>
