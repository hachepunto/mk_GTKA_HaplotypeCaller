<GTKA_HaplotypeCaller.mk

HAPLOTYPECALLER=`{./targets}

haplotypecaller:VE:	$HAPLOTYPECALLER

results/HaplotypeCaller/%.g.vcf:D:	data/%.bam
	mkdir -p `dirname $target`
	java -jar $GTKA \
		-T HaplotypeCaller \
		-R $REFERENCEFASTA \
		-I $prereq \
		-o $target".build"
		-ERC GVCF
	&& mv $target".build" $target
