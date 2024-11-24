if ( isHovered_ )
{
	if ( image_xscale < maxScale_ ) image_xscale += scaleStep_
	if ( image_yscale < maxScale_ ) image_yscale += scaleStep_
}
else
{
	if ( image_xscale > 1 ) image_xscale -= scaleStep_
	if ( image_yscale > 1 ) image_yscale -= scaleStep_
}