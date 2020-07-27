## Fontbakery report

Fontbakery version: 0.7.29

<details>
<summary><b>[2] Family checks</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Do we have the latest version of FontBakery installed?</summary>

* [com.google.fonts/check/fontbakery_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/fontbakery_version)

* 🔥 **FAIL** Unable to detect what's the latest version of FontBakery available. Maybe we're offline? Please check Internet access and try again.

</details>
<details>
<summary>🔥 <b>FAIL:</b> Fonts have consistent underline thickness?</summary>

* [com.google.fonts/check/family/underline_thickness](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/post.html#com.google.fonts/check/family/underline_thickness)
<pre>--- Rationale ---

Dave C Lemon (Adobe Type Team) recommends setting the underline thickness to be
consistent across the family.

If thicknesses are not family consistent, words set on the same line which have
different styles look strange.

See also:
https://twitter.com/typenerd1/status/690361887926697986


</pre>

* 🔥 **FAIL** Thickness of the underline is not the same across this family. In order to fix this, please make sure that the underlineThickness value is the same in the 'post' table of all of this family font files.
Detected underlineThickness values are:
	Eczar-Bold.ttf: 93
	Eczar-ExtraBold.ttf: 100
	Eczar-Medium.ttf: 78
	Eczar-Regular.ttf: 70
	Eczar-SemiBold.ttf: 85


</details>
<br>
</details>
<details>
<summary><b>[8] Eczar-Bold.ttf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWeightClass.</summary>

* [com.google.fonts/check/usweightclass](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/usweightclass)
<pre>--- Rationale ---

Google Fonts expects variable fonts, static ttfs and static otfs to have
differing OS/2 usWeightClass values.

For Variable Fonts, Thin-Black must be 100-900
For static ttfs, Thin-Black can be 100-900 or 250-900
For static otfs, Thin-Black must be 250-900

If static otfs are set lower than 250, text may appear blurry in legacy Windows
applications.

Glyphsapp users can change the usWeightClass value of an instance by adding a
&#x27;weightClass&#x27; customParameter.


</pre>

* 🔥 **FAIL** OS/2 usWeightClass is '400' when it should be '700'. [code: bad-value]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check copyright namerecords match license file.</summary>

* [com.google.fonts/check/name/license](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/license)
<pre>--- Rationale ---

A known licensing description must be provided in the NameID 14 (LICENSE
DESCRIPTION) entries of the name table.

The source of truth for this check (to determine which license is in use) is a
file placed side-by-side to your font project including the licensing terms.

Depending on the chosen license, one of the following string snippets is
expected to be found on the NameID 13 (LICENSE DESCRIPTION) entries of the name
table:
- &quot;This Font Software is licensed under the SIL Open Font License, Version 1.1.
This license is available with a FAQ at: https://scripts.sil.org/OFL&quot;
- &quot;Licensed under the Apache License, Version 2.0&quot;
- &quot;Licensed under the Ubuntu Font Licence 1.0.&quot;


Currently accepted licenses are Apache or Open Font License.
For a small set of legacy families the Ubuntu Font License may be acceptable as
well.

When in doubt, please choose OFL for new font projects.


</pre>

* 🔥 **FAIL** License file LICENSE.txt exists but NameID 13 (LICENSE DESCRIPTION) value on platform 3 (WINDOWS) is not specified for that. Value was: "This Font Software is licensed under the SIL Open Font License, Version 1.1. This license is available with a FAQ at: https://scripts.sil.org/OFL" Must be changed to "Licensed under the Apache License, Version 2.0" [code: wrong]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Ensure indic fonts have the Indian Rupee Sign glyph. </summary>

* [com.google.fonts/check/rupee](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/rupee)
<pre>--- Rationale ---

Per Bureau of Indian Standards every font supporting one of the official Indian
languages needs to include Unicode Character “₹” (U+20B9) Indian Rupee Sign.


</pre>

* 🔥 **FAIL** Please add a glyph for Indian Rupee Sign “₹” at codepoint U+20B9. [code: missing-rupee]

</details>
<details>
<summary>⚠ <b>WARN:</b> Glyphs are similiar to Google Fonts version?</summary>

* [com.google.fonts/check/production_glyphs_similarity](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/production_glyphs_similarity)

* ⚠ **WARN** Following glyphs differ greatly from Google Fonts version: [uni0975, integral, dvKSPLa, uni0906, dvKSPLa.MAR, uni0911, uni0912, uni0914, uni0913]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: uni200C	Contours detected: 1	Expected: 0
Glyph name: uni200D	Contours detected: 1	Expected: 0
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: uni0904	Contours detected: 2	Expected: 1
Glyph name: uni0906	Contours detected: 2	Expected: 1
Glyph name: uni0913	Contours detected: 2	Expected: 1
Glyph name: uni0914	Contours detected: 2	Expected: 1
Glyph name: uni094A	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: uni0975	Contours detected: 2	Expected: 1
Glyph name: uni0908	Contours detected: 2	Expected: 1
Glyph name: uni090E	Contours detected: 2	Expected: 1
Glyph name: uni0910	Contours detected: 2	Expected: 1
Glyph name: uni0911	Contours detected: 3	Expected: 2
Glyph name: uni0912	Contours detected: 3	Expected: 1
Glyph name: uni0975	Contours detected: 2	Expected: 1
Glyph name: uni0906	Contours detected: 2	Expected: 1
Glyph name: uni200C	Contours detected: 1	Expected: 0
Glyph name: uni0911	Contours detected: 3	Expected: 2
Glyph name: uni094A	Contours detected: 2	Expected: 1
Glyph name: uni0910	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: uni0912	Contours detected: 3	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: uni090E	Contours detected: 2	Expected: 1
Glyph name: uni0904	Contours detected: 2	Expected: 1
Glyph name: uni0908	Contours detected: 2	Expected: 1
Glyph name: uni0914	Contours detected: 2	Expected: 1
Glyph name: uni0913	Contours detected: 2	Expected: 1
Glyph name: uni200D	Contours detected: 1	Expected: 0
Glyph name: Uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there caret positions declared for every ligature?</summary>

* [com.google.fonts/check/ligature_carets](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/ligature_carets)
<pre>--- Rationale ---

All ligatures in a font must have corresponding caret (text cursor) positions
defined in the GDEF table, otherwhise, users may experience issues with caret
rendering.

If using GlyphsApp, ligature carets can be set directly on canvas by accessing
the `Glyph -&gt; Set Anchors` menu option or by pressing the `Cmd+U` keyboard
shortcut.


</pre>

* ⚠ **WARN** This font lacks caret position values for ligature glyphs on its GDEF table. [code: lacks-caret-pos]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + b
	- b + f
	- f + h
	- h + i
	- i + j
	- j + k
	- k + l
	- l + t

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check mark characters are in GDEF mark glyph class</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---

Mark characters should be in the GDEF mark glyph class.


</pre>

* ⚠ **WARN** The following mark characters could be in the GDEF mark glyph class:
	 U+0903, U+093B, U+093E, U+093F, U+0940, U+0949, U+094A, U+094B, U+094C and U+094F [code: mark-chars]

</details>
<br>
</details>
<details>
<summary><b>[8] Eczar-ExtraBold.ttf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWeightClass.</summary>

* [com.google.fonts/check/usweightclass](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/usweightclass)
<pre>--- Rationale ---

Google Fonts expects variable fonts, static ttfs and static otfs to have
differing OS/2 usWeightClass values.

For Variable Fonts, Thin-Black must be 100-900
For static ttfs, Thin-Black can be 100-900 or 250-900
For static otfs, Thin-Black must be 250-900

If static otfs are set lower than 250, text may appear blurry in legacy Windows
applications.

Glyphsapp users can change the usWeightClass value of an instance by adding a
&#x27;weightClass&#x27; customParameter.


</pre>

* 🔥 **FAIL** OS/2 usWeightClass is '400' when it should be '800'. [code: bad-value]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check copyright namerecords match license file.</summary>

* [com.google.fonts/check/name/license](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/license)
<pre>--- Rationale ---

A known licensing description must be provided in the NameID 14 (LICENSE
DESCRIPTION) entries of the name table.

The source of truth for this check (to determine which license is in use) is a
file placed side-by-side to your font project including the licensing terms.

Depending on the chosen license, one of the following string snippets is
expected to be found on the NameID 13 (LICENSE DESCRIPTION) entries of the name
table:
- &quot;This Font Software is licensed under the SIL Open Font License, Version 1.1.
This license is available with a FAQ at: https://scripts.sil.org/OFL&quot;
- &quot;Licensed under the Apache License, Version 2.0&quot;
- &quot;Licensed under the Ubuntu Font Licence 1.0.&quot;


Currently accepted licenses are Apache or Open Font License.
For a small set of legacy families the Ubuntu Font License may be acceptable as
well.

When in doubt, please choose OFL for new font projects.


</pre>

* 🔥 **FAIL** License file LICENSE.txt exists but NameID 13 (LICENSE DESCRIPTION) value on platform 3 (WINDOWS) is not specified for that. Value was: "This Font Software is licensed under the SIL Open Font License, Version 1.1. This license is available with a FAQ at: https://scripts.sil.org/OFL" Must be changed to "Licensed under the Apache License, Version 2.0" [code: wrong]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Ensure indic fonts have the Indian Rupee Sign glyph. </summary>

* [com.google.fonts/check/rupee](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/rupee)
<pre>--- Rationale ---

Per Bureau of Indian Standards every font supporting one of the official Indian
languages needs to include Unicode Character “₹” (U+20B9) Indian Rupee Sign.


</pre>

* 🔥 **FAIL** Please add a glyph for Indian Rupee Sign “₹” at codepoint U+20B9. [code: missing-rupee]

</details>
<details>
<summary>⚠ <b>WARN:</b> Glyphs are similiar to Google Fonts version?</summary>

* [com.google.fonts/check/production_glyphs_similarity](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/production_glyphs_similarity)

* ⚠ **WARN** Following glyphs differ greatly from Google Fonts version: [uni0975, integral, dvKSPLa, uni0906, dvKSPLa.MAR, uni0911, uni0912, uni0914, uni0913]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: uni200C	Contours detected: 1	Expected: 0
Glyph name: uni200D	Contours detected: 1	Expected: 0
Glyph name: oslash	Contours detected: 2	Expected: 3
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: uni0904	Contours detected: 2	Expected: 1
Glyph name: uni0906	Contours detected: 2	Expected: 1
Glyph name: uni0913	Contours detected: 2	Expected: 1
Glyph name: uni0914	Contours detected: 2	Expected: 1
Glyph name: uni094A	Contours detected: 2	Expected: 1
Glyph name: uni0959	Contours detected: 5	Expected: 2 or 4
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: uni0975	Contours detected: 2	Expected: 1
Glyph name: Upsilonwithtonos	Contours detected: 3	Expected: 2
Glyph name: Upsilon	Contours detected: 2	Expected: 1
Glyph name: Upsilondieresis	Contours detected: 4	Expected: 3
Glyph name: uni0908	Contours detected: 2	Expected: 1
Glyph name: uni090E	Contours detected: 2	Expected: 1
Glyph name: uni0910	Contours detected: 2	Expected: 1
Glyph name: uni0911	Contours detected: 3	Expected: 2
Glyph name: uni0912	Contours detected: 3	Expected: 1
Glyph name: uni0916	Contours detected: 4	Expected: 1 or 3
Glyph name: Upsilonasper	Contours detected: 3	Expected: 2
Glyph name: Upsilonaspergrave	Contours detected: 4	Expected: 3
Glyph name: Upsilonasperacute	Contours detected: 4	Expected: 3
Glyph name: Upsilonaspertilde	Contours detected: 4	Expected: 3
Glyph name: Upsilonbreve	Contours detected: 3	Expected: 2
Glyph name: Upsilonwithmacron	Contours detected: 3	Expected: 2
Glyph name: Upsilongrave	Contours detected: 3	Expected: 2
Glyph name: Upsilonacute	Contours detected: 3	Expected: 2
Glyph name: uni0975	Contours detected: 2	Expected: 1
Glyph name: Upsilondieresis	Contours detected: 4	Expected: 3
Glyph name: uni0959	Contours detected: 5	Expected: 2 or 4
Glyph name: oslash	Contours detected: 2	Expected: 3
Glyph name: Upsilon	Contours detected: 2	Expected: 1
Glyph name: uni0906	Contours detected: 2	Expected: 1
Glyph name: uni200C	Contours detected: 1	Expected: 0
Glyph name: uni0911	Contours detected: 3	Expected: 2
Glyph name: uni0916	Contours detected: 4	Expected: 1 or 3
Glyph name: uni094A	Contours detected: 2	Expected: 1
Glyph name: uni0910	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: uni0912	Contours detected: 3	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: uni090E	Contours detected: 2	Expected: 1
Glyph name: uni0904	Contours detected: 2	Expected: 1
Glyph name: uni0908	Contours detected: 2	Expected: 1
Glyph name: uni0914	Contours detected: 2	Expected: 1
Glyph name: uni0913	Contours detected: 2	Expected: 1
Glyph name: uni200D	Contours detected: 1	Expected: 0
Glyph name: Uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there caret positions declared for every ligature?</summary>

* [com.google.fonts/check/ligature_carets](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/ligature_carets)
<pre>--- Rationale ---

All ligatures in a font must have corresponding caret (text cursor) positions
defined in the GDEF table, otherwhise, users may experience issues with caret
rendering.

If using GlyphsApp, ligature carets can be set directly on canvas by accessing
the `Glyph -&gt; Set Anchors` menu option or by pressing the `Cmd+U` keyboard
shortcut.


</pre>

* ⚠ **WARN** This font lacks caret position values for ligature glyphs on its GDEF table. [code: lacks-caret-pos]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + b
	- b + f
	- f + h
	- h + i
	- i + j
	- j + k
	- k + l
	- l + t

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check mark characters are in GDEF mark glyph class</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---

Mark characters should be in the GDEF mark glyph class.


</pre>

* ⚠ **WARN** The following mark characters could be in the GDEF mark glyph class:
	 U+0903, U+093B, U+093E, U+093F, U+0940, U+0949, U+094A, U+094B, U+094C and U+094F [code: mark-chars]

</details>
<br>
</details>
<details>
<summary><b>[8] Eczar-Medium.ttf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWeightClass.</summary>

* [com.google.fonts/check/usweightclass](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/usweightclass)
<pre>--- Rationale ---

Google Fonts expects variable fonts, static ttfs and static otfs to have
differing OS/2 usWeightClass values.

For Variable Fonts, Thin-Black must be 100-900
For static ttfs, Thin-Black can be 100-900 or 250-900
For static otfs, Thin-Black must be 250-900

If static otfs are set lower than 250, text may appear blurry in legacy Windows
applications.

Glyphsapp users can change the usWeightClass value of an instance by adding a
&#x27;weightClass&#x27; customParameter.


</pre>

* 🔥 **FAIL** OS/2 usWeightClass is '400' when it should be '500'. [code: bad-value]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check copyright namerecords match license file.</summary>

* [com.google.fonts/check/name/license](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/license)
<pre>--- Rationale ---

A known licensing description must be provided in the NameID 14 (LICENSE
DESCRIPTION) entries of the name table.

The source of truth for this check (to determine which license is in use) is a
file placed side-by-side to your font project including the licensing terms.

Depending on the chosen license, one of the following string snippets is
expected to be found on the NameID 13 (LICENSE DESCRIPTION) entries of the name
table:
- &quot;This Font Software is licensed under the SIL Open Font License, Version 1.1.
This license is available with a FAQ at: https://scripts.sil.org/OFL&quot;
- &quot;Licensed under the Apache License, Version 2.0&quot;
- &quot;Licensed under the Ubuntu Font Licence 1.0.&quot;


Currently accepted licenses are Apache or Open Font License.
For a small set of legacy families the Ubuntu Font License may be acceptable as
well.

When in doubt, please choose OFL for new font projects.


</pre>

* 🔥 **FAIL** License file LICENSE.txt exists but NameID 13 (LICENSE DESCRIPTION) value on platform 3 (WINDOWS) is not specified for that. Value was: "This Font Software is licensed under the SIL Open Font License, Version 1.1. This license is available with a FAQ at: https://scripts.sil.org/OFL" Must be changed to "Licensed under the Apache License, Version 2.0" [code: wrong]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Ensure indic fonts have the Indian Rupee Sign glyph. </summary>

* [com.google.fonts/check/rupee](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/rupee)
<pre>--- Rationale ---

Per Bureau of Indian Standards every font supporting one of the official Indian
languages needs to include Unicode Character “₹” (U+20B9) Indian Rupee Sign.


</pre>

* 🔥 **FAIL** Please add a glyph for Indian Rupee Sign “₹” at codepoint U+20B9. [code: missing-rupee]

</details>
<details>
<summary>⚠ <b>WARN:</b> Glyphs are similiar to Google Fonts version?</summary>

* [com.google.fonts/check/production_glyphs_similarity](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/production_glyphs_similarity)

* ⚠ **WARN** Following glyphs differ greatly from Google Fonts version: [integral, dvKSPLa, dvKSPLa.MAR]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: uni200C	Contours detected: 1	Expected: 0
Glyph name: uni200D	Contours detected: 1	Expected: 0
Glyph name: asterisk	Contours detected: 5	Expected: 1 or 4
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: uni0904	Contours detected: 2	Expected: 1
Glyph name: uni0906	Contours detected: 2	Expected: 1
Glyph name: uni0913	Contours detected: 2	Expected: 1
Glyph name: uni0914	Contours detected: 2	Expected: 1
Glyph name: uni094A	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: uni0975	Contours detected: 2	Expected: 1
Glyph name: uni0908	Contours detected: 2	Expected: 1
Glyph name: uni090E	Contours detected: 2	Expected: 1
Glyph name: uni0910	Contours detected: 2	Expected: 1
Glyph name: uni0911	Contours detected: 3	Expected: 2
Glyph name: uni0912	Contours detected: 3	Expected: 1
Glyph name: uni0975	Contours detected: 2	Expected: 1
Glyph name: asterisk	Contours detected: 5	Expected: 1 or 4
Glyph name: uni0906	Contours detected: 2	Expected: 1
Glyph name: uni200C	Contours detected: 1	Expected: 0
Glyph name: uni0911	Contours detected: 3	Expected: 2
Glyph name: uni094A	Contours detected: 2	Expected: 1
Glyph name: uni0910	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: uni0912	Contours detected: 3	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: uni090E	Contours detected: 2	Expected: 1
Glyph name: uni0904	Contours detected: 2	Expected: 1
Glyph name: uni0908	Contours detected: 2	Expected: 1
Glyph name: uni0914	Contours detected: 2	Expected: 1
Glyph name: uni0913	Contours detected: 2	Expected: 1
Glyph name: uni200D	Contours detected: 1	Expected: 0
Glyph name: Uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there caret positions declared for every ligature?</summary>

* [com.google.fonts/check/ligature_carets](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/ligature_carets)
<pre>--- Rationale ---

All ligatures in a font must have corresponding caret (text cursor) positions
defined in the GDEF table, otherwhise, users may experience issues with caret
rendering.

If using GlyphsApp, ligature carets can be set directly on canvas by accessing
the `Glyph -&gt; Set Anchors` menu option or by pressing the `Cmd+U` keyboard
shortcut.


</pre>

* ⚠ **WARN** This font lacks caret position values for ligature glyphs on its GDEF table. [code: lacks-caret-pos]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + b
	- b + f
	- f + h
	- h + i
	- i + j
	- j + k
	- k + l
	- l + t

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check mark characters are in GDEF mark glyph class</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---

Mark characters should be in the GDEF mark glyph class.


</pre>

* ⚠ **WARN** The following mark characters could be in the GDEF mark glyph class:
	 U+0903, U+093B, U+093E, U+093F, U+0940, U+0949, U+094A, U+094B, U+094C and U+094F [code: mark-chars]

</details>
<br>
</details>
<details>
<summary><b>[7] Eczar-Regular.ttf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Check copyright namerecords match license file.</summary>

* [com.google.fonts/check/name/license](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/license)
<pre>--- Rationale ---

A known licensing description must be provided in the NameID 14 (LICENSE
DESCRIPTION) entries of the name table.

The source of truth for this check (to determine which license is in use) is a
file placed side-by-side to your font project including the licensing terms.

Depending on the chosen license, one of the following string snippets is
expected to be found on the NameID 13 (LICENSE DESCRIPTION) entries of the name
table:
- &quot;This Font Software is licensed under the SIL Open Font License, Version 1.1.
This license is available with a FAQ at: https://scripts.sil.org/OFL&quot;
- &quot;Licensed under the Apache License, Version 2.0&quot;
- &quot;Licensed under the Ubuntu Font Licence 1.0.&quot;


Currently accepted licenses are Apache or Open Font License.
For a small set of legacy families the Ubuntu Font License may be acceptable as
well.

When in doubt, please choose OFL for new font projects.


</pre>

* 🔥 **FAIL** License file LICENSE.txt exists but NameID 13 (LICENSE DESCRIPTION) value on platform 3 (WINDOWS) is not specified for that. Value was: "This Font Software is licensed under the SIL Open Font License, Version 1.1. This license is available with a FAQ at: https://scripts.sil.org/OFL" Must be changed to "Licensed under the Apache License, Version 2.0" [code: wrong]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Ensure indic fonts have the Indian Rupee Sign glyph. </summary>

* [com.google.fonts/check/rupee](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/rupee)
<pre>--- Rationale ---

Per Bureau of Indian Standards every font supporting one of the official Indian
languages needs to include Unicode Character “₹” (U+20B9) Indian Rupee Sign.


</pre>

* 🔥 **FAIL** Please add a glyph for Indian Rupee Sign “₹” at codepoint U+20B9. [code: missing-rupee]

</details>
<details>
<summary>⚠ <b>WARN:</b> Glyphs are similiar to Google Fonts version?</summary>

* [com.google.fonts/check/production_glyphs_similarity](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/production_glyphs_similarity)

* ⚠ **WARN** Following glyphs differ greatly from Google Fonts version: [integral, dvKSPLa, dvKSPLa.MAR]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: uni200C	Contours detected: 1	Expected: 0
Glyph name: uni200D	Contours detected: 1	Expected: 0
Glyph name: asterisk	Contours detected: 5	Expected: 1 or 4
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: uni0904	Contours detected: 2	Expected: 1
Glyph name: uni0906	Contours detected: 2	Expected: 1
Glyph name: uni0913	Contours detected: 2	Expected: 1
Glyph name: uni0914	Contours detected: 2	Expected: 1
Glyph name: uni094A	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: uni0975	Contours detected: 2	Expected: 1
Glyph name: uni0908	Contours detected: 2	Expected: 1
Glyph name: uni090E	Contours detected: 2	Expected: 1
Glyph name: uni0910	Contours detected: 2	Expected: 1
Glyph name: uni0911	Contours detected: 3	Expected: 2
Glyph name: uni0912	Contours detected: 3	Expected: 1
Glyph name: uni0975	Contours detected: 2	Expected: 1
Glyph name: asterisk	Contours detected: 5	Expected: 1 or 4
Glyph name: uni0906	Contours detected: 2	Expected: 1
Glyph name: uni200C	Contours detected: 1	Expected: 0
Glyph name: uni0911	Contours detected: 3	Expected: 2
Glyph name: uni094A	Contours detected: 2	Expected: 1
Glyph name: uni0910	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: uni0912	Contours detected: 3	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: uni090E	Contours detected: 2	Expected: 1
Glyph name: uni0904	Contours detected: 2	Expected: 1
Glyph name: uni0908	Contours detected: 2	Expected: 1
Glyph name: uni0914	Contours detected: 2	Expected: 1
Glyph name: uni0913	Contours detected: 2	Expected: 1
Glyph name: uni200D	Contours detected: 1	Expected: 0
Glyph name: Uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there caret positions declared for every ligature?</summary>

* [com.google.fonts/check/ligature_carets](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/ligature_carets)
<pre>--- Rationale ---

All ligatures in a font must have corresponding caret (text cursor) positions
defined in the GDEF table, otherwhise, users may experience issues with caret
rendering.

If using GlyphsApp, ligature carets can be set directly on canvas by accessing
the `Glyph -&gt; Set Anchors` menu option or by pressing the `Cmd+U` keyboard
shortcut.


</pre>

* ⚠ **WARN** This font lacks caret position values for ligature glyphs on its GDEF table. [code: lacks-caret-pos]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + b
	- b + f
	- f + h
	- h + i
	- i + j
	- j + k
	- k + l
	- l + t

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check mark characters are in GDEF mark glyph class</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---

Mark characters should be in the GDEF mark glyph class.


</pre>

* ⚠ **WARN** The following mark characters could be in the GDEF mark glyph class:
	 U+0903, U+093B, U+093E, U+093F, U+0940, U+0949, U+094A, U+094B, U+094C and U+094F [code: mark-chars]

</details>
<br>
</details>
<details>
<summary><b>[8] Eczar-SemiBold.ttf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWeightClass.</summary>

* [com.google.fonts/check/usweightclass](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/usweightclass)
<pre>--- Rationale ---

Google Fonts expects variable fonts, static ttfs and static otfs to have
differing OS/2 usWeightClass values.

For Variable Fonts, Thin-Black must be 100-900
For static ttfs, Thin-Black can be 100-900 or 250-900
For static otfs, Thin-Black must be 250-900

If static otfs are set lower than 250, text may appear blurry in legacy Windows
applications.

Glyphsapp users can change the usWeightClass value of an instance by adding a
&#x27;weightClass&#x27; customParameter.


</pre>

* 🔥 **FAIL** OS/2 usWeightClass is '400' when it should be '600'. [code: bad-value]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check copyright namerecords match license file.</summary>

* [com.google.fonts/check/name/license](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/license)
<pre>--- Rationale ---

A known licensing description must be provided in the NameID 14 (LICENSE
DESCRIPTION) entries of the name table.

The source of truth for this check (to determine which license is in use) is a
file placed side-by-side to your font project including the licensing terms.

Depending on the chosen license, one of the following string snippets is
expected to be found on the NameID 13 (LICENSE DESCRIPTION) entries of the name
table:
- &quot;This Font Software is licensed under the SIL Open Font License, Version 1.1.
This license is available with a FAQ at: https://scripts.sil.org/OFL&quot;
- &quot;Licensed under the Apache License, Version 2.0&quot;
- &quot;Licensed under the Ubuntu Font Licence 1.0.&quot;


Currently accepted licenses are Apache or Open Font License.
For a small set of legacy families the Ubuntu Font License may be acceptable as
well.

When in doubt, please choose OFL for new font projects.


</pre>

* 🔥 **FAIL** License file LICENSE.txt exists but NameID 13 (LICENSE DESCRIPTION) value on platform 3 (WINDOWS) is not specified for that. Value was: "This Font Software is licensed under the SIL Open Font License, Version 1.1. This license is available with a FAQ at: https://scripts.sil.org/OFL" Must be changed to "Licensed under the Apache License, Version 2.0" [code: wrong]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Ensure indic fonts have the Indian Rupee Sign glyph. </summary>

* [com.google.fonts/check/rupee](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/rupee)
<pre>--- Rationale ---

Per Bureau of Indian Standards every font supporting one of the official Indian
languages needs to include Unicode Character “₹” (U+20B9) Indian Rupee Sign.


</pre>

* 🔥 **FAIL** Please add a glyph for Indian Rupee Sign “₹” at codepoint U+20B9. [code: missing-rupee]

</details>
<details>
<summary>⚠ <b>WARN:</b> Glyphs are similiar to Google Fonts version?</summary>

* [com.google.fonts/check/production_glyphs_similarity](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/production_glyphs_similarity)

* ⚠ **WARN** Following glyphs differ greatly from Google Fonts version: [integral, dvKSPLa, dvKSPLa.MAR]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: uni200C	Contours detected: 1	Expected: 0
Glyph name: uni200D	Contours detected: 1	Expected: 0
Glyph name: asterisk	Contours detected: 5	Expected: 1 or 4
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: uni0904	Contours detected: 2	Expected: 1
Glyph name: uni0906	Contours detected: 2	Expected: 1
Glyph name: uni0913	Contours detected: 2	Expected: 1
Glyph name: uni0914	Contours detected: 2	Expected: 1
Glyph name: uni094A	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: uni0975	Contours detected: 2	Expected: 1
Glyph name: uni0908	Contours detected: 2	Expected: 1
Glyph name: uni090E	Contours detected: 2	Expected: 1
Glyph name: uni0910	Contours detected: 2	Expected: 1
Glyph name: uni0911	Contours detected: 3	Expected: 2
Glyph name: uni0912	Contours detected: 3	Expected: 1
Glyph name: uni0975	Contours detected: 2	Expected: 1
Glyph name: asterisk	Contours detected: 5	Expected: 1 or 4
Glyph name: uni0906	Contours detected: 2	Expected: 1
Glyph name: uni200C	Contours detected: 1	Expected: 0
Glyph name: uni0911	Contours detected: 3	Expected: 2
Glyph name: uni094A	Contours detected: 2	Expected: 1
Glyph name: uni0910	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: uni0912	Contours detected: 3	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: uni090E	Contours detected: 2	Expected: 1
Glyph name: uni0904	Contours detected: 2	Expected: 1
Glyph name: uni0908	Contours detected: 2	Expected: 1
Glyph name: uni0914	Contours detected: 2	Expected: 1
Glyph name: uni0913	Contours detected: 2	Expected: 1
Glyph name: uni200D	Contours detected: 1	Expected: 0
Glyph name: Uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there caret positions declared for every ligature?</summary>

* [com.google.fonts/check/ligature_carets](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/ligature_carets)
<pre>--- Rationale ---

All ligatures in a font must have corresponding caret (text cursor) positions
defined in the GDEF table, otherwhise, users may experience issues with caret
rendering.

If using GlyphsApp, ligature carets can be set directly on canvas by accessing
the `Glyph -&gt; Set Anchors` menu option or by pressing the `Cmd+U` keyboard
shortcut.


</pre>

* ⚠ **WARN** This font lacks caret position values for ligature glyphs on its GDEF table. [code: lacks-caret-pos]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + b
	- b + f
	- f + h
	- h + i
	- i + j
	- j + k
	- k + l
	- l + t

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check mark characters are in GDEF mark glyph class</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---

Mark characters should be in the GDEF mark glyph class.


</pre>

* ⚠ **WARN** The following mark characters could be in the GDEF mark glyph class:
	 U+0903, U+093B, U+093E, U+093F, U+0940, U+0949, U+094A, U+094B, U+094C and U+094F [code: mark-chars]

</details>
<br>
</details>

### Summary

| 💔 ERROR | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS | 🔎 DEBUG |
|:-----:|:----:|:----:|:----:|:----:|:----:|:----:|
| 0 | 16 | 25 | 376 | 30 | 382 | 0 |
| 0% | 2% | 3% | 45% | 4% | 46% | 0% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
* **DEBUG**
