import Prism from 'prismjs';

import 'prismjs/plugins/autoloader/prism-autoloader';

import 'prismjs/plugins/line-numbers/prism-line-numbers';
import 'prismjs/plugins/line-numbers/prism-line-numbers.css';

import 'prismjs/plugins/toolbar/prism-toolbar';
import 'prismjs/plugins/toolbar/prism-toolbar.css';

import 'prismjs/plugins/copy-to-clipboard/prism-copy-to-clipboard';

import 'prismjs/plugins/show-language/prism-show-language';

Prism.plugins.autoloader.languages_path = 'https://cdn.jsdelivr.net/npm/prismjs@1.20.0/components/';

Prism.highlightAll();

Prism.hooks.add('complete', env => {
  env.element.parentNode.classList.add('scrollbar-dark');
});
