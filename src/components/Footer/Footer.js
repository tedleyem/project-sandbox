import './../../index.css';

function Footer() {
  return (
<footer
  class="flex flex-col items-center bg-neutral-100 text-center dark:bg-neutral-600 lg:text-left">

<div
    class="w-full bg-neutral-200 p-4 text-center text-neutral-700 dark:bg-neutral-700 dark:text-neutral-200">
    <a
      class="text-neutral-800 dark:text-neutral-400"
      href="https://tw-elements.com/"
      >This is a project that can be used as a simple web application for testing Devops strategies.</a
    >
  </div>

  <div
    class="w-full bg-neutral-200 p-4 text-center text-neutral-700 dark:bg-neutral-700 dark:text-neutral-200">
    © Project Sandbox
    <a
      class="text-neutral-800 dark:text-neutral-400"
      href="https://tw-elements.com/"
      > || version number: 0.1.0</a
    >
  </div>
</footer>

  );
}

export default Footer;