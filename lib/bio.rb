#
# bio.rb - Loading all BioRuby modules
#
#   Copyright (C) 2001 KATAYAMA Toshiaki <k@bioruby.org>
#
#  This library is free software; you can redistribute it and/or
#  modify it under the terms of the GNU Library General Public
#  License as published by the Free Software Foundation; either
#  version 2 of the License, or (at your option) any later version.
#
#  This library is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#  Library General Public License for more details.
#
#  $Id: bio.rb,v 1.5 2001/10/17 14:43:10 katayama Exp $
#

module Bio
  BIORUBY_VERSION = 0.3
end

### Sequence

require 'bio/sequence'		# required by bio/db.rb

### Locations

require 'bio/location'		# required by bio/sequence.rb

### Reference

require 'bio/reference'		# required by bio/db.rb

### Matrix/Vector

require 'bio/matrix'		# required by bio/pathway.rb

### Pathway/Relation

require 'bio/pathway'

### IO interface modules

require 'bio/io/dbget'
require 'bio/io/pubmed'

### Constants

require 'bio/data/na'		# required by bio/sequence.rb
require 'bio/data/aa'		# required by bio/sequence.rb
require 'bio/data/codontable'	# required by bio/sequence.rb
require 'bio/data/keggorg'	# required by bio/db.rb

### DB parsers

require 'bio/db'		# required by bio/db/*.rb

## GenBank/RefSeq/DDBJ

require 'bio/db/genbank'
require 'bio/db/refseq'
require 'bio/db/ddbj'

## EMBL/TrEMBL/Swiss-Prot

#require 'bio/db/embl'
#require 'bio/db/trembl'
#require 'bio/db/swissprot'

## KEGG

require 'bio/db/kegg/genome'
require 'bio/db/kegg/genes'
require 'bio/db/kegg/brite'
require 'bio/db/kegg/cell'
require 'bio/db/kegg/compound'
require 'bio/db/kegg/enzyme'

## AAindex

require 'bio/db/aaindex'

## TRANSFAC

require 'bio/db/transfac'

## Prosite

require 'bio/db/prosite'

## LITDB

require 'bio/db/litdb'

## MEDLINE

require 'bio/db/medline'

### Bioinformatics tools

#require 'bio/tool/fasta'
#require 'bio/tool/blast'
#require 'bio/tool/hmmer'

### misc utils

require 'bio/util/fold'

#
# If you wish to shorten the class names in your script,
# use "include Bio" after require this library as follows:
#
#   #!/usr/bin/env ruby
#   require 'bio'
#   include Bio
#
