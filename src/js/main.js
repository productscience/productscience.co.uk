
function ready(fn) {
  if (
    document.attachEvent
      ? document.readyState === "complete"
      : document.readyState !== "loading"
  ) {
    fn()
  } else {
    document.addEventListener("DOMContentLoaded", fn)
  }
}

function scrollOnClick(linkEl, targetEl) {
  linkEl.addEventListener("click", function(ev) {
    ev.preventDefault()
    targetEl.scrollIntoView({ behavior: "smooth" })
  })
}

function main() {
  scrollOnClick(
    document.querySelector('[href="/#about"]'),
    document.querySelector("#about")
  )
  scrollOnClick(
    document.querySelector('[href="/#contact"]'),
    document.querySelector("#contact")
  )
}

ready(main)