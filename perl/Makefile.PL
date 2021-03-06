#!/usr/bin/perl

########## LICENCE ##########
# Copyright (c) 2014-2018 Genome Research Ltd.
#
# Author: CASM/Cancer IT <cgphelp@sanger.ac.uk>
#
# This file is part of AscatNGS.
#
# AscatNGS is free software: you can redistribute it and/or modify it under
# the terms of the GNU Affero General Public License as published by the Free
# Software Foundation; either version 3 of the License, or (at your option) any
# later version.
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
# details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.
########## LICENCE ##########

use ExtUtils::MakeMaker;
use File::ShareDir::Install;

install_share module => 'Sanger::CGP::Ascat::Implement', 'share';

WriteMakefile(
  NAME          => 'AscatNgs',
  LICENSE       => 'agpl_3', # http://search.cpan.org/~dagolden/CPAN-Meta-2.142690/lib/CPAN/Meta/Spec.pm#license
  VERSION_FROM  => 'lib/Sanger/CGP/Ascat.pm',
  EXE_FILES     => [qw( bin/ascat.pl
                        bin/ascatCnToVCF.pl
                        bin/ascatFailedCnCsv.pl
                        bin/ascatToBigWig.pl
                        bin/utilities/ascatFaiChunk.pl
                        bin/utilities/ascatSnpPanelFromVcfs.pl
                        bin/utilities/ascatSnpPanelGcCorrections.pl
                        bin/utilities/ascatSnpPanelGenerator.pl
                        bin/utilities/ascatSnpPanelMerge.pl
                        )],
  PREREQ_PM     => {
                     'Const::Fast' => 0.014,
                     'Bio::DB::HTS' => 1.11,
                     'Try::Tiny' => 0.24,
                     'autodie' => 2.29,
                   }
);

package MY;
use File::ShareDir::Install qw( postamble );
