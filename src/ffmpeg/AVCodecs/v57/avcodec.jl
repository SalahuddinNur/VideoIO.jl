# Julia wrapper for header: /usr/local/include/libavcodec/avcodec.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    av_codec_get_pkt_timebase,
    av_codec_set_pkt_timebase,
    av_codec_get_codec_descriptor,
    av_codec_set_codec_descriptor,
    av_codec_get_codec_properties,
    av_codec_get_lowres,
    av_codec_set_lowres,
    av_codec_get_seek_preroll,
    av_codec_set_seek_preroll,
    av_codec_get_chroma_intra_matrix,
    av_codec_set_chroma_intra_matrix,
    av_codec_get_max_lowres,
    av_codec_next,
    avcodec_version,
    avcodec_configuration,
    avcodec_license,
    avcodec_register,
    avcodec_register_all,
    avcodec_alloc_context3,
    avcodec_free_context,
    avcodec_get_context_defaults3,
    avcodec_get_class,
    avcodec_get_frame_class,
    avcodec_get_subtitle_rect_class,
    avcodec_copy_context,
    avcodec_open2,
    avcodec_close,
    avsubtitle_free,
    av_packet_alloc,
    av_packet_clone,
    av_packet_free,
    av_init_packet,
    av_new_packet,
    av_shrink_packet,
    av_grow_packet,
    av_packet_from_data,
    av_dup_packet,
    av_copy_packet,
    av_copy_packet_side_data,
    av_free_packet,
    av_packet_new_side_data,
    av_packet_add_side_data,
    av_packet_shrink_side_data,
    av_packet_get_side_data,
    av_packet_merge_side_data,
    av_packet_split_side_data,
    av_packet_side_data_name,
    av_packet_pack_dictionary,
    av_packet_unpack_dictionary,
    av_packet_free_side_data,
    av_packet_ref,
    av_packet_unref,
    av_packet_move_ref,
    av_packet_copy_props,
    av_packet_rescale_ts,
    avcodec_find_decoder,
    avcodec_find_decoder_by_name,
    avcodec_default_get_buffer2,
    avcodec_get_edge_width,
    avcodec_align_dimensions,
    avcodec_align_dimensions2,
    avcodec_enum_to_chroma_pos,
    avcodec_chroma_pos_to_enum,
    avcodec_decode_audio4,
    avcodec_decode_video2,
    avcodec_decode_subtitle2,
    av_parser_next,
    av_register_codec_parser,
    av_parser_init,
    av_parser_parse2,
    av_parser_change,
    av_parser_close,
    avcodec_find_encoder,
    avcodec_find_encoder_by_name,
    avcodec_encode_audio2,
    avcodec_encode_video2,
    avcodec_encode_subtitle,
    av_audio_resample_init,
    audio_resample,
    audio_resample_close,
    av_resample_init,
    av_resample,
    av_resample_compensate,
    av_resample_close,
    avpicture_alloc,
    avpicture_free,
    avpicture_fill,
    avpicture_layout,
    avpicture_get_size,
    av_picture_copy,
    av_picture_crop,
    av_picture_pad,
    avcodec_get_chroma_sub_sample,
    avcodec_pix_fmt_to_codec_tag,
    avcodec_get_pix_fmt_loss,
    avcodec_find_best_pix_fmt_of_list,
    avcodec_find_best_pix_fmt_of_2,
    avcodec_find_best_pix_fmt2,
    avcodec_default_get_format,
    avcodec_set_dimensions,
    av_get_codec_tag_string,
    avcodec_string,
    av_get_profile_name,
    avcodec_profile_name,
    avcodec_default_execute,
    avcodec_default_execute2,
    avcodec_fill_audio_frame,
    avcodec_flush_buffers,
    av_get_bits_per_sample,
    av_get_pcm_codec,
    av_get_exact_bits_per_sample,
    av_get_audio_frame_duration,
    av_register_bitstream_filter,
    av_bitstream_filter_init,
    av_bitstream_filter_filter,
    av_bitstream_filter_close,
    av_bitstream_filter_next,
    av_fast_padded_malloc,
    av_fast_padded_mallocz,
    av_xiphlacing,
    av_log_missing_feature,
    av_register_hwaccel,
    av_hwaccel_next,
    av_lockmgr_register,
    avcodec_get_type,
    avcodec_get_name,
    avcodec_is_open,
    av_codec_is_encoder,
    av_codec_is_decoder,
    avcodec_descriptor_get,
    avcodec_descriptor_next,
    avcodec_descriptor_get_by_name,
    av_cpb_properties_alloc


function av_codec_get_pkt_timebase(avctx)
    ccall((:av_codec_get_pkt_timebase,libavcodec),AVRational,(Ptr{AVCodecContext},),avctx)
end

function av_codec_set_pkt_timebase(avctx,val::AVRational)
    ccall((:av_codec_set_pkt_timebase,libavcodec),Void,(Ptr{AVCodecContext},AVRational),avctx,val)
end

function av_codec_get_codec_descriptor(avctx)
    ccall((:av_codec_get_codec_descriptor,libavcodec),Ptr{AVCodecDescriptor},(Ptr{AVCodecContext},),avctx)
end

function av_codec_set_codec_descriptor(avctx,desc)
    ccall((:av_codec_set_codec_descriptor,libavcodec),Void,(Ptr{AVCodecContext},Ptr{AVCodecDescriptor}),avctx,desc)
end

function av_codec_get_codec_properties(avctx)
    ccall((:av_codec_get_codec_properties,libavcodec),UInt32,(Ptr{AVCodecContext},),avctx)
end

function av_codec_get_lowres(avctx)
    ccall((:av_codec_get_lowres,libavcodec),Cint,(Ptr{AVCodecContext},),avctx)
end

function av_codec_set_lowres(avctx,val::Integer)
    ccall((:av_codec_set_lowres,libavcodec),Void,(Ptr{AVCodecContext},Cint),avctx,val)
end

function av_codec_get_seek_preroll(avctx)
    ccall((:av_codec_get_seek_preroll,libavcodec),Cint,(Ptr{AVCodecContext},),avctx)
end

function av_codec_set_seek_preroll(avctx,val::Integer)
    ccall((:av_codec_set_seek_preroll,libavcodec),Void,(Ptr{AVCodecContext},Cint),avctx,val)
end

function av_codec_get_chroma_intra_matrix(avctx)
    ccall((:av_codec_get_chroma_intra_matrix,libavcodec),Ptr{UInt16},(Ptr{AVCodecContext},),avctx)
end

function av_codec_set_chroma_intra_matrix(avctx,val)
    ccall((:av_codec_set_chroma_intra_matrix,libavcodec),Void,(Ptr{AVCodecContext},Ptr{UInt16}),avctx,val)
end

function av_codec_get_max_lowres(codec)
    ccall((:av_codec_get_max_lowres,libavcodec),Cint,(Ptr{AVCodec},),codec)
end

function av_codec_next(c)
    ccall((:av_codec_next,libavcodec),Ptr{AVCodec},(Ptr{AVCodec},),c)
end

function avcodec_version()
    ccall((:avcodec_version,libavcodec),UInt32,())
end

function avcodec_configuration()
    ccall((:avcodec_configuration,libavcodec),Cstring,())
end

function avcodec_license()
    ccall((:avcodec_license,libavcodec),Cstring,())
end

function avcodec_register(codec)
    ccall((:avcodec_register,libavcodec),Void,(Ptr{AVCodec},),codec)
end

function avcodec_register_all()
    ccall((:avcodec_register_all,libavcodec),Void,())
end

function avcodec_alloc_context3(codec)
    ccall((:avcodec_alloc_context3,libavcodec),Ptr{AVCodecContext},(Ptr{AVCodec},),codec)
end

function avcodec_free_context(avctx)
    ccall((:avcodec_free_context,libavcodec),Void,(Ptr{Ptr{AVCodecContext}},),avctx)
end

function avcodec_get_context_defaults3(s,codec)
    ccall((:avcodec_get_context_defaults3,libavcodec),Cint,(Ptr{AVCodecContext},Ptr{AVCodec}),s,codec)
end

function avcodec_get_class()
    ccall((:avcodec_get_class,libavcodec),Ptr{AVClass},())
end

function avcodec_get_frame_class()
    ccall((:avcodec_get_frame_class,libavcodec),Ptr{AVClass},())
end

function avcodec_get_subtitle_rect_class()
    ccall((:avcodec_get_subtitle_rect_class,libavcodec),Ptr{AVClass},())
end

function avcodec_copy_context(dest,src)
    ccall((:avcodec_copy_context,libavcodec),Cint,(Ptr{AVCodecContext},Ptr{AVCodecContext}),dest,src)
end

function avcodec_open2(avctx,codec,options)
    ccall((:avcodec_open2,libavcodec),Cint,(Ptr{AVCodecContext},Ptr{AVCodec},Ptr{Ptr{AVDictionary}}),avctx,codec,options)
end

function avcodec_close(avctx)
    ccall((:avcodec_close,libavcodec),Cint,(Ptr{AVCodecContext},),avctx)
end

function avsubtitle_free(sub)
    ccall((:avsubtitle_free,libavcodec),Void,(Ptr{AVSubtitle},),sub)
end

function av_packet_alloc()
    ccall((:av_packet_alloc,libavcodec),Ptr{AVPacket},())
end

function av_packet_clone(src)
    ccall((:av_packet_clone,libavcodec),Ptr{AVPacket},(Ptr{AVPacket},),src)
end

function av_packet_free(pkt)
    ccall((:av_packet_free,libavcodec),Void,(Ptr{Ptr{AVPacket}},),pkt)
end

function av_init_packet(pkt)
    ccall((:av_init_packet,libavcodec),Void,(Ptr{AVPacket},),pkt)
end

function av_new_packet(pkt,size::Integer)
    ccall((:av_new_packet,libavcodec),Cint,(Ptr{AVPacket},Cint),pkt,size)
end

function av_shrink_packet(pkt,size::Integer)
    ccall((:av_shrink_packet,libavcodec),Void,(Ptr{AVPacket},Cint),pkt,size)
end

function av_grow_packet(pkt,grow_by::Integer)
    ccall((:av_grow_packet,libavcodec),Cint,(Ptr{AVPacket},Cint),pkt,grow_by)
end

function av_packet_from_data(pkt,data,size::Integer)
    ccall((:av_packet_from_data,libavcodec),Cint,(Ptr{AVPacket},Ptr{UInt8},Cint),pkt,data,size)
end

function av_dup_packet(pkt)
    ccall((:av_dup_packet,libavcodec),Cint,(Ptr{AVPacket},),pkt)
end

function av_copy_packet(dst,src)
    ccall((:av_copy_packet,libavcodec),Cint,(Ptr{AVPacket},Ptr{AVPacket}),dst,src)
end

function av_copy_packet_side_data(dst,src)
    ccall((:av_copy_packet_side_data,libavcodec),Cint,(Ptr{AVPacket},Ptr{AVPacket}),dst,src)
end

function av_free_packet(pkt)
    ccall((:av_free_packet,libavcodec),Void,(Ptr{AVPacket},),pkt)
end

function av_packet_new_side_data(pkt,_type::AVPacketSideDataType,size::Integer)
    ccall((:av_packet_new_side_data,libavcodec),Ptr{UInt8},(Ptr{AVPacket},AVPacketSideDataType,Cint),pkt,_type,size)
end

function av_packet_add_side_data(pkt,_type::AVPacketSideDataType,data,size::Csize_t)
    ccall((:av_packet_add_side_data,libavcodec),Cint,(Ptr{AVPacket},AVPacketSideDataType,Ptr{UInt8},Csize_t),pkt,_type,data,size)
end

function av_packet_shrink_side_data(pkt,_type::AVPacketSideDataType,size::Integer)
    ccall((:av_packet_shrink_side_data,libavcodec),Cint,(Ptr{AVPacket},AVPacketSideDataType,Cint),pkt,_type,size)
end

function av_packet_get_side_data(pkt,_type::AVPacketSideDataType,size)
    ccall((:av_packet_get_side_data,libavcodec),Ptr{UInt8},(Ptr{AVPacket},AVPacketSideDataType,Ptr{Cint}),pkt,_type,size)
end

function av_packet_merge_side_data(pkt)
    ccall((:av_packet_merge_side_data,libavcodec),Cint,(Ptr{AVPacket},),pkt)
end

function av_packet_split_side_data(pkt)
    ccall((:av_packet_split_side_data,libavcodec),Cint,(Ptr{AVPacket},),pkt)
end

function av_packet_side_data_name(_type::AVPacketSideDataType)
    ccall((:av_packet_side_data_name,libavcodec),Cstring,(AVPacketSideDataType,),_type)
end

function av_packet_pack_dictionary(dict,size)
    ccall((:av_packet_pack_dictionary,libavcodec),Ptr{UInt8},(Ptr{AVDictionary},Ptr{Cint}),dict,size)
end

function av_packet_unpack_dictionary(data,size::Integer,dict)
    ccall((:av_packet_unpack_dictionary,libavcodec),Cint,(Ptr{UInt8},Cint,Ptr{Ptr{AVDictionary}}),data,size,dict)
end

function av_packet_free_side_data(pkt)
    ccall((:av_packet_free_side_data,libavcodec),Void,(Ptr{AVPacket},),pkt)
end

function av_packet_ref(dst,src)
    ccall((:av_packet_ref,libavcodec),Cint,(Ptr{AVPacket},Ptr{AVPacket}),dst,src)
end

function av_packet_unref(pkt)
    ccall((:av_packet_unref,libavcodec),Void,(Ptr{AVPacket},),pkt)
end

function av_packet_move_ref(dst,src)
    ccall((:av_packet_move_ref,libavcodec),Void,(Ptr{AVPacket},Ptr{AVPacket}),dst,src)
end

function av_packet_copy_props(dst,src)
    ccall((:av_packet_copy_props,libavcodec),Cint,(Ptr{AVPacket},Ptr{AVPacket}),dst,src)
end

function av_packet_rescale_ts(pkt,tb_src::AVRational,tb_dst::AVRational)
    ccall((:av_packet_rescale_ts,libavcodec),Void,(Ptr{AVPacket},AVRational,AVRational),pkt,tb_src,tb_dst)
end

function avcodec_find_decoder(id::AVCodecID)
    ccall((:avcodec_find_decoder,libavcodec),Ptr{AVCodec},(AVCodecID,),id)
end

function avcodec_find_decoder_by_name(name)
    ccall((:avcodec_find_decoder_by_name,libavcodec),Ptr{AVCodec},(Cstring,),name)
end

function avcodec_default_get_buffer2(s,frame,flags::Integer)
    ccall((:avcodec_default_get_buffer2,libavcodec),Cint,(Ptr{AVCodecContext},Ptr{AVFrame},Cint),s,frame,flags)
end

function avcodec_get_edge_width()
    ccall((:avcodec_get_edge_width,libavcodec),UInt32,())
end

function avcodec_align_dimensions(s,width,height)
    ccall((:avcodec_align_dimensions,libavcodec),Void,(Ptr{AVCodecContext},Ptr{Cint},Ptr{Cint}),s,width,height)
end

function avcodec_align_dimensions2(s,width,height,linesize_align::NTuple{8,Cint})
    ccall((:avcodec_align_dimensions2,libavcodec),Void,(Ptr{AVCodecContext},Ptr{Cint},Ptr{Cint},NTuple{8,Cint}),s,width,height,linesize_align)
end

function avcodec_enum_to_chroma_pos(xpos,ypos,pos::AVChromaLocation)
    ccall((:avcodec_enum_to_chroma_pos,libavcodec),Cint,(Ptr{Cint},Ptr{Cint},AVChromaLocation),xpos,ypos,pos)
end

function avcodec_chroma_pos_to_enum(xpos::Integer,ypos::Integer)
    ccall((:avcodec_chroma_pos_to_enum,libavcodec),Cint,(Cint,Cint),xpos,ypos)
end

function avcodec_decode_audio4(avctx,frame,got_frame_ptr,avpkt)
    ccall((:avcodec_decode_audio4,libavcodec),Cint,(Ptr{AVCodecContext},Ptr{AVFrame},Ptr{Cint},Ptr{AVPacket}),avctx,frame,got_frame_ptr,avpkt)
end

function avcodec_decode_video2(avctx,picture,got_picture_ptr,avpkt)
    ccall((:avcodec_decode_video2,libavcodec),Cint,(Ptr{AVCodecContext},Ptr{AVFrame},Ptr{Cint},Ptr{AVPacket}),avctx,picture,got_picture_ptr,avpkt)
end

function avcodec_decode_subtitle2(avctx,sub,got_sub_ptr,avpkt)
    ccall((:avcodec_decode_subtitle2,libavcodec),Cint,(Ptr{AVCodecContext},Ptr{AVSubtitle},Ptr{Cint},Ptr{AVPacket}),avctx,sub,got_sub_ptr,avpkt)
end

function av_parser_next(c)
    ccall((:av_parser_next,libavcodec),Ptr{AVCodecParser},(Ptr{AVCodecParser},),c)
end

function av_register_codec_parser(parser)
    ccall((:av_register_codec_parser,libavcodec),Void,(Ptr{AVCodecParser},),parser)
end

function av_parser_init(codec_id::Integer)
    ccall((:av_parser_init,libavcodec),Ptr{AVCodecParserContext},(Cint,),codec_id)
end

function av_parser_parse2(s,avctx,poutbuf,poutbuf_size,buf,buf_size::Integer,pts::Int64,dts::Int64,pos::Int64)
    ccall((:av_parser_parse2,libavcodec),Cint,(Ptr{AVCodecParserContext},Ptr{AVCodecContext},Ptr{Ptr{UInt8}},Ptr{Cint},Ptr{UInt8},Cint,Int64,Int64,Int64),s,avctx,poutbuf,poutbuf_size,buf,buf_size,pts,dts,pos)
end

function av_parser_change(s,avctx,poutbuf,poutbuf_size,buf,buf_size::Integer,keyframe::Integer)
    ccall((:av_parser_change,libavcodec),Cint,(Ptr{AVCodecParserContext},Ptr{AVCodecContext},Ptr{Ptr{UInt8}},Ptr{Cint},Ptr{UInt8},Cint,Cint),s,avctx,poutbuf,poutbuf_size,buf,buf_size,keyframe)
end

function av_parser_close(s)
    ccall((:av_parser_close,libavcodec),Void,(Ptr{AVCodecParserContext},),s)
end

function avcodec_find_encoder(id::AVCodecID)
    ccall((:avcodec_find_encoder,libavcodec),Ptr{AVCodec},(AVCodecID,),id)
end

function avcodec_find_encoder_by_name(name)
    ccall((:avcodec_find_encoder_by_name,libavcodec),Ptr{AVCodec},(Cstring,),name)
end

function avcodec_encode_audio2(avctx,avpkt,frame,got_packet_ptr)
    ccall((:avcodec_encode_audio2,libavcodec),Cint,(Ptr{AVCodecContext},Ptr{AVPacket},Ptr{AVFrame},Ptr{Cint}),avctx,avpkt,frame,got_packet_ptr)
end

function avcodec_encode_video2(avctx,avpkt,frame,got_packet_ptr)
    ccall((:avcodec_encode_video2,libavcodec),Cint,(Ptr{AVCodecContext},Ptr{AVPacket},Ptr{AVFrame},Ptr{Cint}),avctx,avpkt,frame,got_packet_ptr)
end

function avcodec_encode_subtitle(avctx,buf,buf_size::Integer,sub)
    ccall((:avcodec_encode_subtitle,libavcodec),Cint,(Ptr{AVCodecContext},Ptr{UInt8},Cint,Ptr{AVSubtitle}),avctx,buf,buf_size,sub)
end

function av_audio_resample_init(output_channels::Integer,input_channels::Integer,output_rate::Integer,input_rate::Integer,sample_fmt_out::AVSampleFormat,sample_fmt_in::AVSampleFormat,filter_length::Integer,log2_phase_count::Integer,linear::Integer,cutoff::Cdouble)
    ccall((:av_audio_resample_init,libavcodec),Ptr{ReSampleContext},(Cint,Cint,Cint,Cint,AVSampleFormat,AVSampleFormat,Cint,Cint,Cint,Cdouble),output_channels,input_channels,output_rate,input_rate,sample_fmt_out,sample_fmt_in,filter_length,log2_phase_count,linear,cutoff)
end

function audio_resample(s,output,input,nb_samples::Integer)
    ccall((:audio_resample,libavcodec),Cint,(Ptr{ReSampleContext},Ptr{Int16},Ptr{Int16},Cint),s,output,input,nb_samples)
end

function audio_resample_close(s)
    ccall((:audio_resample_close,libavcodec),Void,(Ptr{ReSampleContext},),s)
end

function av_resample_init(out_rate::Integer,in_rate::Integer,filter_length::Integer,log2_phase_count::Integer,linear::Integer,cutoff::Cdouble)
    ccall((:av_resample_init,libavcodec),Ptr{AVResampleContext},(Cint,Cint,Cint,Cint,Cint,Cdouble),out_rate,in_rate,filter_length,log2_phase_count,linear,cutoff)
end

function av_resample(c,dst,src,consumed,src_size::Integer,dst_size::Integer,update_ctx::Integer)
    ccall((:av_resample,libavcodec),Cint,(Ptr{AVResampleContext},Ptr{Int16},Ptr{Int16},Ptr{Cint},Cint,Cint,Cint),c,dst,src,consumed,src_size,dst_size,update_ctx)
end

function av_resample_compensate(c,sample_delta::Integer,compensation_distance::Integer)
    ccall((:av_resample_compensate,libavcodec),Void,(Ptr{AVResampleContext},Cint,Cint),c,sample_delta,compensation_distance)
end

function av_resample_close(c)
    ccall((:av_resample_close,libavcodec),Void,(Ptr{AVResampleContext},),c)
end

function avpicture_alloc(picture,pix_fmt::AVPixelFormat,width::Integer,height::Integer)
    ccall((:avpicture_alloc,libavcodec),Cint,(Ptr{AVPicture},AVPixelFormat,Cint,Cint),picture,pix_fmt,width,height)
end

function avpicture_free(picture)
    ccall((:avpicture_free,libavcodec),Void,(Ptr{AVPicture},),picture)
end

function avpicture_fill(picture,ptr,pix_fmt::AVPixelFormat,width::Integer,height::Integer)
    ccall((:avpicture_fill,libavcodec),Cint,(Ptr{AVPicture},Ptr{UInt8},AVPixelFormat,Cint,Cint),picture,ptr,pix_fmt,width,height)
end

function avpicture_layout(src,pix_fmt::AVPixelFormat,width::Integer,height::Integer,dest,dest_size::Integer)
    ccall((:avpicture_layout,libavcodec),Cint,(Ptr{AVPicture},AVPixelFormat,Cint,Cint,Ptr{Cuchar},Cint),src,pix_fmt,width,height,dest,dest_size)
end

function avpicture_get_size(pix_fmt::AVPixelFormat,width::Integer,height::Integer)
    ccall((:avpicture_get_size,libavcodec),Cint,(AVPixelFormat,Cint,Cint),pix_fmt,width,height)
end

function av_picture_copy(dst,src,pix_fmt::AVPixelFormat,width::Integer,height::Integer)
    ccall((:av_picture_copy,libavcodec),Void,(Ptr{AVPicture},Ptr{AVPicture},AVPixelFormat,Cint,Cint),dst,src,pix_fmt,width,height)
end

function av_picture_crop(dst,src,pix_fmt::AVPixelFormat,top_band::Integer,left_band::Integer)
    ccall((:av_picture_crop,libavcodec),Cint,(Ptr{AVPicture},Ptr{AVPicture},AVPixelFormat,Cint,Cint),dst,src,pix_fmt,top_band,left_band)
end

function av_picture_pad(dst,src,height::Integer,width::Integer,pix_fmt::AVPixelFormat,padtop::Integer,padbottom::Integer,padleft::Integer,padright::Integer,color)
    ccall((:av_picture_pad,libavcodec),Cint,(Ptr{AVPicture},Ptr{AVPicture},Cint,Cint,AVPixelFormat,Cint,Cint,Cint,Cint,Ptr{Cint}),dst,src,height,width,pix_fmt,padtop,padbottom,padleft,padright,color)
end

function avcodec_get_chroma_sub_sample(pix_fmt::AVPixelFormat,h_shift,v_shift)
    ccall((:avcodec_get_chroma_sub_sample,libavcodec),Void,(AVPixelFormat,Ptr{Cint},Ptr{Cint}),pix_fmt,h_shift,v_shift)
end

function avcodec_pix_fmt_to_codec_tag(pix_fmt::AVPixelFormat)
    ccall((:avcodec_pix_fmt_to_codec_tag,libavcodec),UInt32,(AVPixelFormat,),pix_fmt)
end

function avcodec_get_pix_fmt_loss(dst_pix_fmt::AVPixelFormat,src_pix_fmt::AVPixelFormat,has_alpha::Integer)
    ccall((:avcodec_get_pix_fmt_loss,libavcodec),Cint,(AVPixelFormat,AVPixelFormat,Cint),dst_pix_fmt,src_pix_fmt,has_alpha)
end

function avcodec_find_best_pix_fmt_of_list(pix_fmt_list,src_pix_fmt::AVPixelFormat,has_alpha::Integer,loss_ptr)
    ccall((:avcodec_find_best_pix_fmt_of_list,libavcodec),Cint,(Ptr{AVPixelFormat},AVPixelFormat,Cint,Ptr{Cint}),pix_fmt_list,src_pix_fmt,has_alpha,loss_ptr)
end

function avcodec_find_best_pix_fmt_of_2(dst_pix_fmt1::AVPixelFormat,dst_pix_fmt2::AVPixelFormat,src_pix_fmt::AVPixelFormat,has_alpha::Integer,loss_ptr)
    ccall((:avcodec_find_best_pix_fmt_of_2,libavcodec),Cint,(AVPixelFormat,AVPixelFormat,AVPixelFormat,Cint,Ptr{Cint}),dst_pix_fmt1,dst_pix_fmt2,src_pix_fmt,has_alpha,loss_ptr)
end

function avcodec_find_best_pix_fmt2(dst_pix_fmt1::AVPixelFormat,dst_pix_fmt2::AVPixelFormat,src_pix_fmt::AVPixelFormat,has_alpha::Integer,loss_ptr)
    ccall((:avcodec_find_best_pix_fmt2,libavcodec),Cint,(AVPixelFormat,AVPixelFormat,AVPixelFormat,Cint,Ptr{Cint}),dst_pix_fmt1,dst_pix_fmt2,src_pix_fmt,has_alpha,loss_ptr)
end

function avcodec_default_get_format(s,fmt)
    ccall((:avcodec_default_get_format,libavcodec),Cint,(Ptr{AVCodecContext},Ptr{AVPixelFormat}),s,fmt)
end

function avcodec_set_dimensions(s,width::Integer,height::Integer)
    ccall((:avcodec_set_dimensions,libavcodec),Void,(Ptr{AVCodecContext},Cint,Cint),s,width,height)
end

function av_get_codec_tag_string(buf,buf_size::Csize_t,codec_tag::Integer)
    ccall((:av_get_codec_tag_string,libavcodec),Csize_t,(Cstring,Csize_t,UInt32),buf,buf_size,codec_tag)
end

function avcodec_string(buf,buf_size::Integer,enc,encode::Integer)
    ccall((:avcodec_string,libavcodec),Void,(Cstring,Cint,Ptr{AVCodecContext},Cint),buf,buf_size,enc,encode)
end

function av_get_profile_name(codec,profile::Integer)
    ccall((:av_get_profile_name,libavcodec),Cstring,(Ptr{AVCodec},Cint),codec,profile)
end

function avcodec_profile_name(codec_id::AVCodecID,profile::Integer)
    ccall((:avcodec_profile_name,libavcodec),Cstring,(AVCodecID,Cint),codec_id,profile)
end

function avcodec_default_execute(c,func,arg,ret,count::Integer,size::Integer)
    ccall((:avcodec_default_execute,libavcodec),Cint,(Ptr{AVCodecContext},Ptr{Void},Ptr{Void},Ptr{Cint},Cint,Cint),c,func,arg,ret,count,size)
end

function avcodec_default_execute2(c,func,arg,ret,count::Integer)
    ccall((:avcodec_default_execute2,libavcodec),Cint,(Ptr{AVCodecContext},Ptr{Void},Ptr{Void},Ptr{Cint},Cint),c,func,arg,ret,count)
end

function avcodec_fill_audio_frame(frame,nb_channels::Integer,sample_fmt::AVSampleFormat,buf,buf_size::Integer,align::Integer)
    ccall((:avcodec_fill_audio_frame,libavcodec),Cint,(Ptr{AVFrame},Cint,AVSampleFormat,Ptr{UInt8},Cint,Cint),frame,nb_channels,sample_fmt,buf,buf_size,align)
end

function avcodec_flush_buffers(avctx)
    ccall((:avcodec_flush_buffers,libavcodec),Void,(Ptr{AVCodecContext},),avctx)
end

function av_get_bits_per_sample(codec_id::AVCodecID)
    ccall((:av_get_bits_per_sample,libavcodec),Cint,(AVCodecID,),codec_id)
end

function av_get_pcm_codec(fmt::AVSampleFormat,be::Integer)
    ccall((:av_get_pcm_codec,libavcodec),Cint,(AVSampleFormat,Cint),fmt,be)
end

function av_get_exact_bits_per_sample(codec_id::AVCodecID)
    ccall((:av_get_exact_bits_per_sample,libavcodec),Cint,(AVCodecID,),codec_id)
end

function av_get_audio_frame_duration(avctx,frame_bytes::Integer)
    ccall((:av_get_audio_frame_duration,libavcodec),Cint,(Ptr{AVCodecContext},Cint),avctx,frame_bytes)
end

function av_register_bitstream_filter(bsf)
    ccall((:av_register_bitstream_filter,libavcodec),Void,(Ptr{AVBitStreamFilter},),bsf)
end

function av_bitstream_filter_init(name)
    ccall((:av_bitstream_filter_init,libavcodec),Ptr{AVBitStreamFilterContext},(Cstring,),name)
end

function av_bitstream_filter_filter(bsfc,avctx,args,poutbuf,poutbuf_size,buf,buf_size::Integer,keyframe::Integer)
    ccall((:av_bitstream_filter_filter,libavcodec),Cint,(Ptr{AVBitStreamFilterContext},Ptr{AVCodecContext},Cstring,Ptr{Ptr{UInt8}},Ptr{Cint},Ptr{UInt8},Cint,Cint),bsfc,avctx,args,poutbuf,poutbuf_size,buf,buf_size,keyframe)
end

function av_bitstream_filter_close(bsf)
    ccall((:av_bitstream_filter_close,libavcodec),Void,(Ptr{AVBitStreamFilterContext},),bsf)
end

function av_bitstream_filter_next(f)
    ccall((:av_bitstream_filter_next,libavcodec),Ptr{AVBitStreamFilter},(Ptr{AVBitStreamFilter},),f)
end

function av_fast_padded_malloc(ptr,size,min_size::Csize_t)
    ccall((:av_fast_padded_malloc,libavcodec),Void,(Ptr{Void},Ptr{UInt32},Csize_t),ptr,size,min_size)
end

function av_fast_padded_mallocz(ptr,size,min_size::Csize_t)
    ccall((:av_fast_padded_mallocz,libavcodec),Void,(Ptr{Void},Ptr{UInt32},Csize_t),ptr,size,min_size)
end

function av_xiphlacing(s,v::Integer)
    ccall((:av_xiphlacing,libavcodec),UInt32,(Ptr{Cuchar},UInt32),s,v)
end

function av_log_missing_feature(avc,feature,want_sample::Integer)
    ccall((:av_log_missing_feature,libavcodec),Void,(Ptr{Void},Cstring,Cint),avc,feature,want_sample)
end

function av_register_hwaccel(hwaccel)
    ccall((:av_register_hwaccel,libavcodec),Void,(Ptr{AVHWAccel},),hwaccel)
end

function av_hwaccel_next(hwaccel)
    ccall((:av_hwaccel_next,libavcodec),Ptr{AVHWAccel},(Ptr{AVHWAccel},),hwaccel)
end

function av_lockmgr_register(cb)
    ccall((:av_lockmgr_register,libavcodec),Cint,(Ptr{Void},),cb)
end

function avcodec_get_type(codec_id::AVCodecID)
    ccall((:avcodec_get_type,libavcodec),Cint,(AVCodecID,),codec_id)
end

function avcodec_get_name(id::AVCodecID)
    ccall((:avcodec_get_name,libavcodec),Cstring,(AVCodecID,),id)
end

function avcodec_is_open(s)
    ccall((:avcodec_is_open,libavcodec),Cint,(Ptr{AVCodecContext},),s)
end

function av_codec_is_encoder(codec)
    ccall((:av_codec_is_encoder,libavcodec),Cint,(Ptr{AVCodec},),codec)
end

function av_codec_is_decoder(codec)
    ccall((:av_codec_is_decoder,libavcodec),Cint,(Ptr{AVCodec},),codec)
end

function avcodec_descriptor_get(id::AVCodecID)
    ccall((:avcodec_descriptor_get,libavcodec),Ptr{AVCodecDescriptor},(AVCodecID,),id)
end

function avcodec_descriptor_next(prev)
    ccall((:avcodec_descriptor_next,libavcodec),Ptr{AVCodecDescriptor},(Ptr{AVCodecDescriptor},),prev)
end

function avcodec_descriptor_get_by_name(name)
    ccall((:avcodec_descriptor_get_by_name,libavcodec),Ptr{AVCodecDescriptor},(Cstring,),name)
end

function av_cpb_properties_alloc(size)
    ccall((:av_cpb_properties_alloc,libavcodec),Ptr{AVCPBProperties},(Ptr{Csize_t},),size)
end
