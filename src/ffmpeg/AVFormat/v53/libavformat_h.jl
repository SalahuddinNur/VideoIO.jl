
import Base.zero


export
    AVIO_SEEKABLE_NORMAL,
    URL_PROTOCOL_FLAG_NESTED_SCHEME,
    URL_PROTOCOL_FLAG_NETWORK,
    URL_RDONLY,
    URL_WRONLY,
    URL_RDWR,
    URL_FLAG_NONBLOCK,
    URL_EOF,
    AVSEEK_SIZE,
    AVSEEK_FORCE,
    AVIO_FLAG_READ,
    AVIO_FLAG_WRITE,
    AVIO_FLAG_READ_WRITE,
    AVIO_FLAG_NONBLOCK,
    AVIOInterruptCB,
    AVIOContext,
    URLProtocol,
    URLContext,
    URLPollEntry,
    ByteIOContext,
    AV_METADATA_MATCH_CASE,
    AV_METADATA_IGNORE_SUFFIX,
    AV_METADATA_DONT_STRDUP_KEY,
    AV_METADATA_DONT_STRDUP_VAL,
    AV_METADATA_DONT_OVERWRITE,
    AVPROBE_SCORE_MAX,
    AVPROBE_PADDING_SIZE,
    AVFMT_NOFILE,
    AVFMT_NEEDNUMBER,
    AVFMT_SHOW_IDS,
    AVFMT_RAWPICTURE,
    AVFMT_GLOBALHEADER,
    AVFMT_NOTIMESTAMPS,
    AVFMT_GENERIC_INDEX,
    AVFMT_TS_DISCONT,
    AVFMT_VARIABLE_FPS,
    AVFMT_NODIMENSIONS,
    AVFMT_NOSTREAMS,
    AVFMT_NOBINSEARCH,
    AVFMT_NOGENSEARCH,
    AVFMT_NO_BYTE_SEEK,
    AVINDEX_KEYFRAME,
    AV_DISPOSITION_DEFAULT,
    AV_DISPOSITION_DUB,
    AV_DISPOSITION_ORIGINAL,
    AV_DISPOSITION_COMMENT,
    AV_DISPOSITION_LYRICS,
    AV_DISPOSITION_KARAOKE,
    AV_DISPOSITION_FORCED,
    AV_DISPOSITION_HEARING_IMPAIRED,
    AV_DISPOSITION_VISUAL_IMPAIRED,
    AV_DISPOSITION_CLEAN_EFFECTS,
    MAX_REORDER_DELAY,
    MAX_PROBE_PACKETS,
    MAX_STD_TIMEBASES,
    AV_PROGRAM_RUNNING,
    AVFMTCTX_NOHEADER,
    AVFMT_NOOUTPUTLOOP,
    AVFMT_INFINITEOUTPUTLOOP,
    AVFMT_FLAG_GENPTS,
    AVFMT_FLAG_IGNIDX,
    AVFMT_FLAG_NONBLOCK,
    AVFMT_FLAG_IGNDTS,
    AVFMT_FLAG_NOFILLIN,
    AVFMT_FLAG_NOPARSE,
    AVFMT_FLAG_RTP_HINT,
    AVFMT_FLAG_CUSTOM_IO,
    AVFMT_FLAG_DISCARD_CORRUPT,
    RAW_PACKET_BUFFER_SIZE,
    AVSEEK_FLAG_BACKWARD,
    AVSEEK_FLAG_BYTE,
    AVSEEK_FLAG_ANY,
    AVSEEK_FLAG_FRAME,
    AVCodecTag,
    AVMetadataConv,
    AVInputFormat,
    AVOutputFormat,
    AVFrac,
    AVStreamParseType,
    AVSTREAM_PARSE_NONE,
    AVSTREAM_PARSE_FULL,
    AVSTREAM_PARSE_HEADERS,
    AVSTREAM_PARSE_TIMESTAMPS,
    AVSTREAM_PARSE_FULL_ONCE,
    AVIndexEntry,
    AVProbeData,
    Array_17_Int64,
    AVPacketList,
    AVStream,
    Array_1024_Uint8,
    AVProgram,
    AVChapter,
    AVFormatContext,
    AVMetadata,
    AVMetadataTag,
    AVFormatParameters


const AVIO_SEEKABLE_NORMAL  =  0x0001
const URL_PROTOCOL_FLAG_NESTED_SCHEME  =  1
const URL_PROTOCOL_FLAG_NETWORK  =  2
const URL_RDONLY  =  1
const URL_WRONLY  =  2
const URL_RDWR  =  URL_RDONLY | URL_WRONLY
const URL_FLAG_NONBLOCK  =  8
const URL_EOF  =  -1
const AVSEEK_SIZE  =  0x00010000
const AVSEEK_FORCE  =  0x00020000
const AVIO_FLAG_READ  =  1
const AVIO_FLAG_WRITE  =  2
const AVIO_FLAG_READ_WRITE  =  AVIO_FLAG_READ | AVIO_FLAG_WRITE
const AVIO_FLAG_NONBLOCK  =  8

immutable AVIOInterruptCB
    callback::Ptr{Void}
    opaque::Ptr{Void}
end

immutable AVIOContext
    buffer::Ptr{Cuchar}
    buffer_size::Cint
    buf_ptr::Ptr{Cuchar}
    buf_end::Ptr{Cuchar}
    opaque::Ptr{Void}
    read_packet::Ptr{Void}
    write_packet::Ptr{Void}
    seek::Ptr{Void}
    pos::Int64
    must_flush::Cint
    eof_reached::Cint
    write_flag::Cint
    is_streamed::Cint
    max_packet_size::Cint
    checksum::Culong
    checksum_ptr::Ptr{Cuchar}
    update_checksum::Ptr{Void}
    error::Cint
    read_pause::Ptr{Void}
    read_seek::Ptr{Void}
    seekable::Cint
end

immutable URLProtocol
    name::Ptr{UInt8}
    url_open::Ptr{Void}
    url_read::Ptr{Void}
    url_write::Ptr{Void}
    url_seek::Ptr{Void}
    url_close::Ptr{Void}
    next::Ptr{URLProtocol}
    url_read_pause::Ptr{Void}
    url_read_seek::Ptr{Void}
    url_get_file_handle::Ptr{Void}
    priv_data_size::Cint
    priv_data_class::Ptr{AVClass}
    flags::Cint
    url_check::Ptr{Void}
end

immutable URLContext
    av_class::Ptr{AVClass}
    prot::Ptr{URLProtocol}
    flags::Cint
    is_streamed::Cint
    max_packet_size::Cint
    priv_data::Ptr{Void}
    filename::Ptr{UInt8}
    is_connected::Cint
    interrupt_callback::AVIOInterruptCB
end

immutable URLPollEntry
    handle::Ptr{URLContext}
    events::Cint
    revents::Cint
end

const ByteIOContext = AVIOContext

const AV_METADATA_MATCH_CASE  =  AV_DICT_MATCH_CASE
const AV_METADATA_IGNORE_SUFFIX  =  AV_DICT_IGNORE_SUFFIX
const AV_METADATA_DONT_STRDUP_KEY  =  AV_DICT_DONT_STRDUP_KEY
const AV_METADATA_DONT_STRDUP_VAL  =  AV_DICT_DONT_STRDUP_VAL
const AV_METADATA_DONT_OVERWRITE  =  AV_DICT_DONT_OVERWRITE
const AVPROBE_SCORE_MAX  =  100
const AVPROBE_PADDING_SIZE  =  32
const AVFMT_NOFILE  =  0x0001
const AVFMT_NEEDNUMBER  =  0x0002
const AVFMT_SHOW_IDS  =  0x0008
const AVFMT_RAWPICTURE  =  0x0020
const AVFMT_GLOBALHEADER  =  0x0040
const AVFMT_NOTIMESTAMPS  =  0x0080
const AVFMT_GENERIC_INDEX  =  0x0100
const AVFMT_TS_DISCONT  =  0x0200
const AVFMT_VARIABLE_FPS  =  0x0400
const AVFMT_NODIMENSIONS  =  0x0800
const AVFMT_NOSTREAMS  =  0x1000
const AVFMT_NOBINSEARCH  =  0x2000
const AVFMT_NOGENSEARCH  =  0x4000
const AVFMT_NO_BYTE_SEEK  =  0x8000
const AVINDEX_KEYFRAME  =  0x0001
const AV_DISPOSITION_DEFAULT  =  0x0001
const AV_DISPOSITION_DUB  =  0x0002
const AV_DISPOSITION_ORIGINAL  =  0x0004
const AV_DISPOSITION_COMMENT  =  0x0008
const AV_DISPOSITION_LYRICS  =  0x0010
const AV_DISPOSITION_KARAOKE  =  0x0020
const AV_DISPOSITION_FORCED  =  0x0040
const AV_DISPOSITION_HEARING_IMPAIRED  =  0x0080
const AV_DISPOSITION_VISUAL_IMPAIRED  =  0x0100
const AV_DISPOSITION_CLEAN_EFFECTS  =  0x0200
const MAX_REORDER_DELAY  =  16
const MAX_PROBE_PACKETS  =  2500
const MAX_STD_TIMEBASES  =  60 * 12 + 5
const AV_PROGRAM_RUNNING  =  1
const AVFMTCTX_NOHEADER  =  0x0001
const AVFMT_NOOUTPUTLOOP  =  -1
const AVFMT_INFINITEOUTPUTLOOP  =  0
const AVFMT_FLAG_GENPTS  =  0x0001
const AVFMT_FLAG_IGNIDX  =  0x0002
const AVFMT_FLAG_NONBLOCK  =  0x0004
const AVFMT_FLAG_IGNDTS  =  0x0008
const AVFMT_FLAG_NOFILLIN  =  0x0010
const AVFMT_FLAG_NOPARSE  =  0x0020
const AVFMT_FLAG_RTP_HINT  =  0x0040
const AVFMT_FLAG_CUSTOM_IO  =  0x0080
const AVFMT_FLAG_DISCARD_CORRUPT  =  0x0100
const FF_FDEBUG_TS  =  0x0001
const RAW_PACKET_BUFFER_SIZE  =  2500000
const AVSEEK_FLAG_BACKWARD  =  1
const AVSEEK_FLAG_BYTE  =  2
const AVSEEK_FLAG_ANY  =  4
const AVSEEK_FLAG_FRAME  =  8

const AVCodecTag = Void
const AVMetadataConv = Void

immutable AVInputFormat
    name::Ptr{UInt8}
    long_name::Ptr{UInt8}
    priv_data_size::Cint
    read_probe::Ptr{Void}
    read_header::Ptr{Void}
    read_packet::Ptr{Void}
    read_close::Ptr{Void}
    read_seek::Ptr{Void}
    read_timestamp::Ptr{Void}
    flags::Cint
    extensions::Ptr{UInt8}
    value::Cint
    read_play::Ptr{Void}
    read_pause::Ptr{Void}
    codec_tag::Ptr{Ptr{AVCodecTag}}
    read_seek2::Ptr{Void}
    metadata_conv::Ptr{AVMetadataConv}
    priv_class::Ptr{AVClass}
    next::Ptr{AVInputFormat}
end

immutable AVOutputFormat
    name::Ptr{UInt8}
    long_name::Ptr{UInt8}
    mime_type::Ptr{UInt8}
    extensions::Ptr{UInt8}
    priv_data_size::Cint
    audio_codec::CodecID
    video_codec::CodecID
    write_header::Ptr{Void}
    write_packet::Ptr{Void}
    write_trailer::Ptr{Void}
    flags::Cint
    set_parameters::Ptr{Void}
    interleave_packet::Ptr{Void}
    codec_tag::Ptr{Ptr{AVCodecTag}}
    subtitle_codec::CodecID
    metadata_conv::Ptr{AVMetadataConv}
    priv_class::Ptr{AVClass}
    query_codec::Ptr{Void}
    next::Ptr{AVOutputFormat}
end

immutable AVFrac
    val::Int64
    num::Int64
    den::Int64
end

# begin enum AVStreamParseType
const AVStreamParseType = UInt32
const AVSTREAM_PARSE_NONE  =  UInt32(0)
const AVSTREAM_PARSE_FULL  =  UInt32(1)
const AVSTREAM_PARSE_HEADERS  =  UInt32(2)
const AVSTREAM_PARSE_TIMESTAMPS  =  UInt32(3)
const AVSTREAM_PARSE_FULL_ONCE  =  UInt32(4)
# end enum AVStreamParseType

immutable AVIndexEntry
    pos::Int64
    timestamp::Int64
    flags::Cint
    size::Cint
    min_distance::Cint
end

immutable AVProbeData
    filename::Ptr{UInt8}
    buf::Ptr{Cuchar}
    buf_size::Cint
end

immutable Array_17_Int64
    d1::Int64
    d2::Int64
    d3::Int64
    d4::Int64
    d5::Int64
    d6::Int64
    d7::Int64
    d8::Int64
    d9::Int64
    d10::Int64
    d11::Int64
    d12::Int64
    d13::Int64
    d14::Int64
    d15::Int64
    d16::Int64
    d17::Int64
end

zero(::Type{Array_17_Int64}) = Array_17_Int64(fill(zero(Int64),17)...)

immutable AVPacketList
    pkt::AVPacket
    next::Ptr{AVPacketList}
end

immutable AVStream
    index::Cint
    id::Cint
    codec::Ptr{AVCodecContext}
    r_frame_rate::AVRational
    priv_data::Ptr{Void}
    first_dts::Int64
    pts::AVFrac
    time_base::AVRational
    pts_wrap_bits::Cint
    stream_copy::Cint
    discard::AVDiscard
    quality::Cfloat
    start_time::Int64
    duration::Int64
    need_parsing::AVStreamParseType
    parser::Ptr{AVCodecParserContext}
    cur_dts::Int64
    last_IP_duration::Cint
    last_IP_pts::Int64
    index_entries::Ptr{AVIndexEntry}
    nb_index_entries::Cint
    index_entries_allocated_size::UInt32
    nb_frames::Int64
    disposition::Cint
    probe_data::AVProbeData
    pts_buffer::Array_17_Int64
    sample_aspect_ratio::AVRational
    metadata::Ptr{AVDictionary}
    cur_ptr::Ptr{UInt8}
    cur_len::Cint
    cur_pkt::AVPacket
    reference_dts::Int64
    probe_packets::Cint
    last_in_packet_buffer::Ptr{AVPacketList}
    avg_frame_rate::AVRational
    codec_info_nb_frames::Cint
    info::Ptr{Void}
end

immutable Array_1024_Uint8
    d1::UInt8
    d2::UInt8
    d3::UInt8
    d4::UInt8
    d5::UInt8
    d6::UInt8
    d7::UInt8
    d8::UInt8
    d9::UInt8
    d10::UInt8
    d11::UInt8
    d12::UInt8
    d13::UInt8
    d14::UInt8
    d15::UInt8
    d16::UInt8
    d17::UInt8
    d18::UInt8
    d19::UInt8
    d20::UInt8
    d21::UInt8
    d22::UInt8
    d23::UInt8
    d24::UInt8
    d25::UInt8
    d26::UInt8
    d27::UInt8
    d28::UInt8
    d29::UInt8
    d30::UInt8
    d31::UInt8
    d32::UInt8
    d33::UInt8
    d34::UInt8
    d35::UInt8
    d36::UInt8
    d37::UInt8
    d38::UInt8
    d39::UInt8
    d40::UInt8
    d41::UInt8
    d42::UInt8
    d43::UInt8
    d44::UInt8
    d45::UInt8
    d46::UInt8
    d47::UInt8
    d48::UInt8
    d49::UInt8
    d50::UInt8
    d51::UInt8
    d52::UInt8
    d53::UInt8
    d54::UInt8
    d55::UInt8
    d56::UInt8
    d57::UInt8
    d58::UInt8
    d59::UInt8
    d60::UInt8
    d61::UInt8
    d62::UInt8
    d63::UInt8
    d64::UInt8
    d65::UInt8
    d66::UInt8
    d67::UInt8
    d68::UInt8
    d69::UInt8
    d70::UInt8
    d71::UInt8
    d72::UInt8
    d73::UInt8
    d74::UInt8
    d75::UInt8
    d76::UInt8
    d77::UInt8
    d78::UInt8
    d79::UInt8
    d80::UInt8
    d81::UInt8
    d82::UInt8
    d83::UInt8
    d84::UInt8
    d85::UInt8
    d86::UInt8
    d87::UInt8
    d88::UInt8
    d89::UInt8
    d90::UInt8
    d91::UInt8
    d92::UInt8
    d93::UInt8
    d94::UInt8
    d95::UInt8
    d96::UInt8
    d97::UInt8
    d98::UInt8
    d99::UInt8
    d100::UInt8
    d101::UInt8
    d102::UInt8
    d103::UInt8
    d104::UInt8
    d105::UInt8
    d106::UInt8
    d107::UInt8
    d108::UInt8
    d109::UInt8
    d110::UInt8
    d111::UInt8
    d112::UInt8
    d113::UInt8
    d114::UInt8
    d115::UInt8
    d116::UInt8
    d117::UInt8
    d118::UInt8
    d119::UInt8
    d120::UInt8
    d121::UInt8
    d122::UInt8
    d123::UInt8
    d124::UInt8
    d125::UInt8
    d126::UInt8
    d127::UInt8
    d128::UInt8
    d129::UInt8
    d130::UInt8
    d131::UInt8
    d132::UInt8
    d133::UInt8
    d134::UInt8
    d135::UInt8
    d136::UInt8
    d137::UInt8
    d138::UInt8
    d139::UInt8
    d140::UInt8
    d141::UInt8
    d142::UInt8
    d143::UInt8
    d144::UInt8
    d145::UInt8
    d146::UInt8
    d147::UInt8
    d148::UInt8
    d149::UInt8
    d150::UInt8
    d151::UInt8
    d152::UInt8
    d153::UInt8
    d154::UInt8
    d155::UInt8
    d156::UInt8
    d157::UInt8
    d158::UInt8
    d159::UInt8
    d160::UInt8
    d161::UInt8
    d162::UInt8
    d163::UInt8
    d164::UInt8
    d165::UInt8
    d166::UInt8
    d167::UInt8
    d168::UInt8
    d169::UInt8
    d170::UInt8
    d171::UInt8
    d172::UInt8
    d173::UInt8
    d174::UInt8
    d175::UInt8
    d176::UInt8
    d177::UInt8
    d178::UInt8
    d179::UInt8
    d180::UInt8
    d181::UInt8
    d182::UInt8
    d183::UInt8
    d184::UInt8
    d185::UInt8
    d186::UInt8
    d187::UInt8
    d188::UInt8
    d189::UInt8
    d190::UInt8
    d191::UInt8
    d192::UInt8
    d193::UInt8
    d194::UInt8
    d195::UInt8
    d196::UInt8
    d197::UInt8
    d198::UInt8
    d199::UInt8
    d200::UInt8
    d201::UInt8
    d202::UInt8
    d203::UInt8
    d204::UInt8
    d205::UInt8
    d206::UInt8
    d207::UInt8
    d208::UInt8
    d209::UInt8
    d210::UInt8
    d211::UInt8
    d212::UInt8
    d213::UInt8
    d214::UInt8
    d215::UInt8
    d216::UInt8
    d217::UInt8
    d218::UInt8
    d219::UInt8
    d220::UInt8
    d221::UInt8
    d222::UInt8
    d223::UInt8
    d224::UInt8
    d225::UInt8
    d226::UInt8
    d227::UInt8
    d228::UInt8
    d229::UInt8
    d230::UInt8
    d231::UInt8
    d232::UInt8
    d233::UInt8
    d234::UInt8
    d235::UInt8
    d236::UInt8
    d237::UInt8
    d238::UInt8
    d239::UInt8
    d240::UInt8
    d241::UInt8
    d242::UInt8
    d243::UInt8
    d244::UInt8
    d245::UInt8
    d246::UInt8
    d247::UInt8
    d248::UInt8
    d249::UInt8
    d250::UInt8
    d251::UInt8
    d252::UInt8
    d253::UInt8
    d254::UInt8
    d255::UInt8
    d256::UInt8
    d257::UInt8
    d258::UInt8
    d259::UInt8
    d260::UInt8
    d261::UInt8
    d262::UInt8
    d263::UInt8
    d264::UInt8
    d265::UInt8
    d266::UInt8
    d267::UInt8
    d268::UInt8
    d269::UInt8
    d270::UInt8
    d271::UInt8
    d272::UInt8
    d273::UInt8
    d274::UInt8
    d275::UInt8
    d276::UInt8
    d277::UInt8
    d278::UInt8
    d279::UInt8
    d280::UInt8
    d281::UInt8
    d282::UInt8
    d283::UInt8
    d284::UInt8
    d285::UInt8
    d286::UInt8
    d287::UInt8
    d288::UInt8
    d289::UInt8
    d290::UInt8
    d291::UInt8
    d292::UInt8
    d293::UInt8
    d294::UInt8
    d295::UInt8
    d296::UInt8
    d297::UInt8
    d298::UInt8
    d299::UInt8
    d300::UInt8
    d301::UInt8
    d302::UInt8
    d303::UInt8
    d304::UInt8
    d305::UInt8
    d306::UInt8
    d307::UInt8
    d308::UInt8
    d309::UInt8
    d310::UInt8
    d311::UInt8
    d312::UInt8
    d313::UInt8
    d314::UInt8
    d315::UInt8
    d316::UInt8
    d317::UInt8
    d318::UInt8
    d319::UInt8
    d320::UInt8
    d321::UInt8
    d322::UInt8
    d323::UInt8
    d324::UInt8
    d325::UInt8
    d326::UInt8
    d327::UInt8
    d328::UInt8
    d329::UInt8
    d330::UInt8
    d331::UInt8
    d332::UInt8
    d333::UInt8
    d334::UInt8
    d335::UInt8
    d336::UInt8
    d337::UInt8
    d338::UInt8
    d339::UInt8
    d340::UInt8
    d341::UInt8
    d342::UInt8
    d343::UInt8
    d344::UInt8
    d345::UInt8
    d346::UInt8
    d347::UInt8
    d348::UInt8
    d349::UInt8
    d350::UInt8
    d351::UInt8
    d352::UInt8
    d353::UInt8
    d354::UInt8
    d355::UInt8
    d356::UInt8
    d357::UInt8
    d358::UInt8
    d359::UInt8
    d360::UInt8
    d361::UInt8
    d362::UInt8
    d363::UInt8
    d364::UInt8
    d365::UInt8
    d366::UInt8
    d367::UInt8
    d368::UInt8
    d369::UInt8
    d370::UInt8
    d371::UInt8
    d372::UInt8
    d373::UInt8
    d374::UInt8
    d375::UInt8
    d376::UInt8
    d377::UInt8
    d378::UInt8
    d379::UInt8
    d380::UInt8
    d381::UInt8
    d382::UInt8
    d383::UInt8
    d384::UInt8
    d385::UInt8
    d386::UInt8
    d387::UInt8
    d388::UInt8
    d389::UInt8
    d390::UInt8
    d391::UInt8
    d392::UInt8
    d393::UInt8
    d394::UInt8
    d395::UInt8
    d396::UInt8
    d397::UInt8
    d398::UInt8
    d399::UInt8
    d400::UInt8
    d401::UInt8
    d402::UInt8
    d403::UInt8
    d404::UInt8
    d405::UInt8
    d406::UInt8
    d407::UInt8
    d408::UInt8
    d409::UInt8
    d410::UInt8
    d411::UInt8
    d412::UInt8
    d413::UInt8
    d414::UInt8
    d415::UInt8
    d416::UInt8
    d417::UInt8
    d418::UInt8
    d419::UInt8
    d420::UInt8
    d421::UInt8
    d422::UInt8
    d423::UInt8
    d424::UInt8
    d425::UInt8
    d426::UInt8
    d427::UInt8
    d428::UInt8
    d429::UInt8
    d430::UInt8
    d431::UInt8
    d432::UInt8
    d433::UInt8
    d434::UInt8
    d435::UInt8
    d436::UInt8
    d437::UInt8
    d438::UInt8
    d439::UInt8
    d440::UInt8
    d441::UInt8
    d442::UInt8
    d443::UInt8
    d444::UInt8
    d445::UInt8
    d446::UInt8
    d447::UInt8
    d448::UInt8
    d449::UInt8
    d450::UInt8
    d451::UInt8
    d452::UInt8
    d453::UInt8
    d454::UInt8
    d455::UInt8
    d456::UInt8
    d457::UInt8
    d458::UInt8
    d459::UInt8
    d460::UInt8
    d461::UInt8
    d462::UInt8
    d463::UInt8
    d464::UInt8
    d465::UInt8
    d466::UInt8
    d467::UInt8
    d468::UInt8
    d469::UInt8
    d470::UInt8
    d471::UInt8
    d472::UInt8
    d473::UInt8
    d474::UInt8
    d475::UInt8
    d476::UInt8
    d477::UInt8
    d478::UInt8
    d479::UInt8
    d480::UInt8
    d481::UInt8
    d482::UInt8
    d483::UInt8
    d484::UInt8
    d485::UInt8
    d486::UInt8
    d487::UInt8
    d488::UInt8
    d489::UInt8
    d490::UInt8
    d491::UInt8
    d492::UInt8
    d493::UInt8
    d494::UInt8
    d495::UInt8
    d496::UInt8
    d497::UInt8
    d498::UInt8
    d499::UInt8
    d500::UInt8
    d501::UInt8
    d502::UInt8
    d503::UInt8
    d504::UInt8
    d505::UInt8
    d506::UInt8
    d507::UInt8
    d508::UInt8
    d509::UInt8
    d510::UInt8
    d511::UInt8
    d512::UInt8
    d513::UInt8
    d514::UInt8
    d515::UInt8
    d516::UInt8
    d517::UInt8
    d518::UInt8
    d519::UInt8
    d520::UInt8
    d521::UInt8
    d522::UInt8
    d523::UInt8
    d524::UInt8
    d525::UInt8
    d526::UInt8
    d527::UInt8
    d528::UInt8
    d529::UInt8
    d530::UInt8
    d531::UInt8
    d532::UInt8
    d533::UInt8
    d534::UInt8
    d535::UInt8
    d536::UInt8
    d537::UInt8
    d538::UInt8
    d539::UInt8
    d540::UInt8
    d541::UInt8
    d542::UInt8
    d543::UInt8
    d544::UInt8
    d545::UInt8
    d546::UInt8
    d547::UInt8
    d548::UInt8
    d549::UInt8
    d550::UInt8
    d551::UInt8
    d552::UInt8
    d553::UInt8
    d554::UInt8
    d555::UInt8
    d556::UInt8
    d557::UInt8
    d558::UInt8
    d559::UInt8
    d560::UInt8
    d561::UInt8
    d562::UInt8
    d563::UInt8
    d564::UInt8
    d565::UInt8
    d566::UInt8
    d567::UInt8
    d568::UInt8
    d569::UInt8
    d570::UInt8
    d571::UInt8
    d572::UInt8
    d573::UInt8
    d574::UInt8
    d575::UInt8
    d576::UInt8
    d577::UInt8
    d578::UInt8
    d579::UInt8
    d580::UInt8
    d581::UInt8
    d582::UInt8
    d583::UInt8
    d584::UInt8
    d585::UInt8
    d586::UInt8
    d587::UInt8
    d588::UInt8
    d589::UInt8
    d590::UInt8
    d591::UInt8
    d592::UInt8
    d593::UInt8
    d594::UInt8
    d595::UInt8
    d596::UInt8
    d597::UInt8
    d598::UInt8
    d599::UInt8
    d600::UInt8
    d601::UInt8
    d602::UInt8
    d603::UInt8
    d604::UInt8
    d605::UInt8
    d606::UInt8
    d607::UInt8
    d608::UInt8
    d609::UInt8
    d610::UInt8
    d611::UInt8
    d612::UInt8
    d613::UInt8
    d614::UInt8
    d615::UInt8
    d616::UInt8
    d617::UInt8
    d618::UInt8
    d619::UInt8
    d620::UInt8
    d621::UInt8
    d622::UInt8
    d623::UInt8
    d624::UInt8
    d625::UInt8
    d626::UInt8
    d627::UInt8
    d628::UInt8
    d629::UInt8
    d630::UInt8
    d631::UInt8
    d632::UInt8
    d633::UInt8
    d634::UInt8
    d635::UInt8
    d636::UInt8
    d637::UInt8
    d638::UInt8
    d639::UInt8
    d640::UInt8
    d641::UInt8
    d642::UInt8
    d643::UInt8
    d644::UInt8
    d645::UInt8
    d646::UInt8
    d647::UInt8
    d648::UInt8
    d649::UInt8
    d650::UInt8
    d651::UInt8
    d652::UInt8
    d653::UInt8
    d654::UInt8
    d655::UInt8
    d656::UInt8
    d657::UInt8
    d658::UInt8
    d659::UInt8
    d660::UInt8
    d661::UInt8
    d662::UInt8
    d663::UInt8
    d664::UInt8
    d665::UInt8
    d666::UInt8
    d667::UInt8
    d668::UInt8
    d669::UInt8
    d670::UInt8
    d671::UInt8
    d672::UInt8
    d673::UInt8
    d674::UInt8
    d675::UInt8
    d676::UInt8
    d677::UInt8
    d678::UInt8
    d679::UInt8
    d680::UInt8
    d681::UInt8
    d682::UInt8
    d683::UInt8
    d684::UInt8
    d685::UInt8
    d686::UInt8
    d687::UInt8
    d688::UInt8
    d689::UInt8
    d690::UInt8
    d691::UInt8
    d692::UInt8
    d693::UInt8
    d694::UInt8
    d695::UInt8
    d696::UInt8
    d697::UInt8
    d698::UInt8
    d699::UInt8
    d700::UInt8
    d701::UInt8
    d702::UInt8
    d703::UInt8
    d704::UInt8
    d705::UInt8
    d706::UInt8
    d707::UInt8
    d708::UInt8
    d709::UInt8
    d710::UInt8
    d711::UInt8
    d712::UInt8
    d713::UInt8
    d714::UInt8
    d715::UInt8
    d716::UInt8
    d717::UInt8
    d718::UInt8
    d719::UInt8
    d720::UInt8
    d721::UInt8
    d722::UInt8
    d723::UInt8
    d724::UInt8
    d725::UInt8
    d726::UInt8
    d727::UInt8
    d728::UInt8
    d729::UInt8
    d730::UInt8
    d731::UInt8
    d732::UInt8
    d733::UInt8
    d734::UInt8
    d735::UInt8
    d736::UInt8
    d737::UInt8
    d738::UInt8
    d739::UInt8
    d740::UInt8
    d741::UInt8
    d742::UInt8
    d743::UInt8
    d744::UInt8
    d745::UInt8
    d746::UInt8
    d747::UInt8
    d748::UInt8
    d749::UInt8
    d750::UInt8
    d751::UInt8
    d752::UInt8
    d753::UInt8
    d754::UInt8
    d755::UInt8
    d756::UInt8
    d757::UInt8
    d758::UInt8
    d759::UInt8
    d760::UInt8
    d761::UInt8
    d762::UInt8
    d763::UInt8
    d764::UInt8
    d765::UInt8
    d766::UInt8
    d767::UInt8
    d768::UInt8
    d769::UInt8
    d770::UInt8
    d771::UInt8
    d772::UInt8
    d773::UInt8
    d774::UInt8
    d775::UInt8
    d776::UInt8
    d777::UInt8
    d778::UInt8
    d779::UInt8
    d780::UInt8
    d781::UInt8
    d782::UInt8
    d783::UInt8
    d784::UInt8
    d785::UInt8
    d786::UInt8
    d787::UInt8
    d788::UInt8
    d789::UInt8
    d790::UInt8
    d791::UInt8
    d792::UInt8
    d793::UInt8
    d794::UInt8
    d795::UInt8
    d796::UInt8
    d797::UInt8
    d798::UInt8
    d799::UInt8
    d800::UInt8
    d801::UInt8
    d802::UInt8
    d803::UInt8
    d804::UInt8
    d805::UInt8
    d806::UInt8
    d807::UInt8
    d808::UInt8
    d809::UInt8
    d810::UInt8
    d811::UInt8
    d812::UInt8
    d813::UInt8
    d814::UInt8
    d815::UInt8
    d816::UInt8
    d817::UInt8
    d818::UInt8
    d819::UInt8
    d820::UInt8
    d821::UInt8
    d822::UInt8
    d823::UInt8
    d824::UInt8
    d825::UInt8
    d826::UInt8
    d827::UInt8
    d828::UInt8
    d829::UInt8
    d830::UInt8
    d831::UInt8
    d832::UInt8
    d833::UInt8
    d834::UInt8
    d835::UInt8
    d836::UInt8
    d837::UInt8
    d838::UInt8
    d839::UInt8
    d840::UInt8
    d841::UInt8
    d842::UInt8
    d843::UInt8
    d844::UInt8
    d845::UInt8
    d846::UInt8
    d847::UInt8
    d848::UInt8
    d849::UInt8
    d850::UInt8
    d851::UInt8
    d852::UInt8
    d853::UInt8
    d854::UInt8
    d855::UInt8
    d856::UInt8
    d857::UInt8
    d858::UInt8
    d859::UInt8
    d860::UInt8
    d861::UInt8
    d862::UInt8
    d863::UInt8
    d864::UInt8
    d865::UInt8
    d866::UInt8
    d867::UInt8
    d868::UInt8
    d869::UInt8
    d870::UInt8
    d871::UInt8
    d872::UInt8
    d873::UInt8
    d874::UInt8
    d875::UInt8
    d876::UInt8
    d877::UInt8
    d878::UInt8
    d879::UInt8
    d880::UInt8
    d881::UInt8
    d882::UInt8
    d883::UInt8
    d884::UInt8
    d885::UInt8
    d886::UInt8
    d887::UInt8
    d888::UInt8
    d889::UInt8
    d890::UInt8
    d891::UInt8
    d892::UInt8
    d893::UInt8
    d894::UInt8
    d895::UInt8
    d896::UInt8
    d897::UInt8
    d898::UInt8
    d899::UInt8
    d900::UInt8
    d901::UInt8
    d902::UInt8
    d903::UInt8
    d904::UInt8
    d905::UInt8
    d906::UInt8
    d907::UInt8
    d908::UInt8
    d909::UInt8
    d910::UInt8
    d911::UInt8
    d912::UInt8
    d913::UInt8
    d914::UInt8
    d915::UInt8
    d916::UInt8
    d917::UInt8
    d918::UInt8
    d919::UInt8
    d920::UInt8
    d921::UInt8
    d922::UInt8
    d923::UInt8
    d924::UInt8
    d925::UInt8
    d926::UInt8
    d927::UInt8
    d928::UInt8
    d929::UInt8
    d930::UInt8
    d931::UInt8
    d932::UInt8
    d933::UInt8
    d934::UInt8
    d935::UInt8
    d936::UInt8
    d937::UInt8
    d938::UInt8
    d939::UInt8
    d940::UInt8
    d941::UInt8
    d942::UInt8
    d943::UInt8
    d944::UInt8
    d945::UInt8
    d946::UInt8
    d947::UInt8
    d948::UInt8
    d949::UInt8
    d950::UInt8
    d951::UInt8
    d952::UInt8
    d953::UInt8
    d954::UInt8
    d955::UInt8
    d956::UInt8
    d957::UInt8
    d958::UInt8
    d959::UInt8
    d960::UInt8
    d961::UInt8
    d962::UInt8
    d963::UInt8
    d964::UInt8
    d965::UInt8
    d966::UInt8
    d967::UInt8
    d968::UInt8
    d969::UInt8
    d970::UInt8
    d971::UInt8
    d972::UInt8
    d973::UInt8
    d974::UInt8
    d975::UInt8
    d976::UInt8
    d977::UInt8
    d978::UInt8
    d979::UInt8
    d980::UInt8
    d981::UInt8
    d982::UInt8
    d983::UInt8
    d984::UInt8
    d985::UInt8
    d986::UInt8
    d987::UInt8
    d988::UInt8
    d989::UInt8
    d990::UInt8
    d991::UInt8
    d992::UInt8
    d993::UInt8
    d994::UInt8
    d995::UInt8
    d996::UInt8
    d997::UInt8
    d998::UInt8
    d999::UInt8
    d1000::UInt8
    d1001::UInt8
    d1002::UInt8
    d1003::UInt8
    d1004::UInt8
    d1005::UInt8
    d1006::UInt8
    d1007::UInt8
    d1008::UInt8
    d1009::UInt8
    d1010::UInt8
    d1011::UInt8
    d1012::UInt8
    d1013::UInt8
    d1014::UInt8
    d1015::UInt8
    d1016::UInt8
    d1017::UInt8
    d1018::UInt8
    d1019::UInt8
    d1020::UInt8
    d1021::UInt8
    d1022::UInt8
    d1023::UInt8
    d1024::UInt8
end

zero(::Type{Array_1024_Uint8}) = Array_1024_Uint8(fill(zero(UInt8),1024)...)

immutable AVProgram
    id::Cint
    flags::Cint
    discard::AVDiscard
    stream_index::Ptr{UInt32}
    nb_stream_indexes::UInt32
    metadata::Ptr{AVDictionary}
end

immutable AVChapter
    id::Cint
    time_base::AVRational
    start::Int64
    _end::Int64
    metadata::Ptr{AVDictionary}
end

immutable AVFormatContext
    av_class::Ptr{AVClass}
    iformat::Ptr{AVInputFormat}
    oformat::Ptr{AVOutputFormat}
    priv_data::Ptr{Void}
    pb::Ptr{AVIOContext}
    nb_streams::UInt32
    streams::Ptr{Ptr{AVStream}}
    filename::Array_1024_Uint8
    timestamp::Int64
    ctx_flags::Cint
    packet_buffer::Ptr{AVPacketList}
    start_time::Int64
    duration::Int64
    file_size::Int64
    bit_rate::Cint
    cur_st::Ptr{AVStream}
    data_offset::Int64
    mux_rate::Cint
    packet_size::UInt32
    preload::Cint
    max_delay::Cint
    loop_output::Cint
    flags::Cint
    loop_input::Cint
    probesize::UInt32
    max_analyze_duration::Cint
    key::Ptr{UInt8}
    keylen::Cint
    nb_programs::UInt32
    programs::Ptr{Ptr{AVProgram}}
    video_codec_id::CodecID
    audio_codec_id::CodecID
    subtitle_codec_id::CodecID
    max_index_size::UInt32
    max_picture_buffer::UInt32
    nb_chapters::UInt32
    chapters::Ptr{Ptr{AVChapter}}
    debug::Cint
    raw_packet_buffer::Ptr{AVPacketList}
    raw_packet_buffer_end::Ptr{AVPacketList}
    packet_buffer_end::Ptr{AVPacketList}
    metadata::Ptr{AVDictionary}
    raw_packet_buffer_remaining_size::Cint
    start_time_realtime::Int64
    fps_probe_size::Cint
    error_recognition::Cint
    interrupt_callback::AVIOInterruptCB
end

const AVMetadata = AVDictionary
const AVMetadataTag = AVDictionaryEntry

immutable AVFormatParameters
    time_base::AVRational
    sample_rate::Cint
    channels::Cint
    width::Cint
    height::Cint
    pix_fmt::PixelFormat
    channel::Cint
    standard::Ptr{UInt8}
    mpeg2ts_raw::UInt32
    mpeg2ts_compute_pcr::UInt32
    initial_pause::UInt32
    prealloced_context::UInt32
end
