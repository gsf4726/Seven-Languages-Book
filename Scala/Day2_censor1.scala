trait Censor {
  val safeWords : Map[String, String] = Map("Shoot" -> "Pucky", "Darn" -> "Beans")
  def scrub(dirty: String) : String = {
    safeWords.foldLeft(dirty)((scrubbed, safeWordMap) => scrubbed.replaceAll(safeWordMap._1, safeWordMap._2))
  }
}

class SearchResult(val results: String) extends Censor {
  def getAllResults() = this.results
  def getSafeResults() = this.scrub(this.results)
}

val myResult = new SearchResult(
  "Go ahead, do it! Shoot me! Darn you, dirty ape..."
)

println("Dirty Results:")
println(myResult.getAllResults)

println("Safe Results:")
println(myResult.getSafeResults)