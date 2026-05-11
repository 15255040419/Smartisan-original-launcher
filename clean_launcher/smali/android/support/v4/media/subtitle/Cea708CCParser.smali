.class Landroid/support/v4/media/subtitle/Cea708CCParser;
.super Ljava/lang/Object;
.source "Cea708CCParser.java"


# static fields
.field public static final CAPTION_EMIT_TYPE_BUFFER:I = 0x1

.field public static final CAPTION_EMIT_TYPE_COMMAND_CLW:I = 0x4

.field public static final CAPTION_EMIT_TYPE_COMMAND_CWX:I = 0x3

.field public static final CAPTION_EMIT_TYPE_COMMAND_DFX:I = 0x10

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLC:I = 0xa

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLW:I = 0x8

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLY:I = 0x9

.field public static final CAPTION_EMIT_TYPE_COMMAND_DSW:I = 0x5

.field public static final CAPTION_EMIT_TYPE_COMMAND_HDW:I = 0x6

.field public static final CAPTION_EMIT_TYPE_COMMAND_RST:I = 0xb

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPA:I = 0xc

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPC:I = 0xd

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPL:I = 0xe

.field public static final CAPTION_EMIT_TYPE_COMMAND_SWA:I = 0xf

.field public static final CAPTION_EMIT_TYPE_COMMAND_TGW:I = 0x7

.field public static final CAPTION_EMIT_TYPE_CONTROL:I = 0x2

.field private static final DEBUG:Z = false

.field private static final MUSIC_NOTE_CHAR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Cea708CCParser"


# instance fields
.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mCommand:I

.field private mListener:Landroid/support/v4/media/subtitle/Cea708CCParser$DisplayListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "\u266b"

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v0, Landroid/support/v4/media/subtitle/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/support/v4/media/subtitle/Cea708CCParser$DisplayListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    .line 4
    new-instance v0, Landroid/support/v4/media/subtitle/Cea708CCParser$1;

    invoke-direct {v0, p0}, Landroid/support/v4/media/subtitle/Cea708CCParser$1;-><init>(Landroid/support/v4/media/subtitle/Cea708CCParser;)V

    iput-object v0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mListener:Landroid/support/v4/media/subtitle/Cea708CCParser$DisplayListener;

    if-eqz p1, :cond_0

    .line 5
    iput-object p1, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mListener:Landroid/support/v4/media/subtitle/Cea708CCParser$DisplayListener;

    :cond_0
    return-void
.end method

.method private emitCaptionBuffer()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mListener:Landroid/support/v4/media/subtitle/Cea708CCParser$DisplayListener;

    new-instance v1, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Landroid/support/v4/media/subtitle/Cea708CCParser$DisplayListener;->emitEvent(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;)V

    .line 3
    iget-object p0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_0
    return-void
.end method

.method private emitCaptionEvent(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/Cea708CCParser;->emitCaptionBuffer()V

    .line 2
    iget-object p0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mListener:Landroid/support/v4/media/subtitle/Cea708CCParser$DisplayListener;

    invoke-interface {p0, p1}, Landroid/support/v4/media/subtitle/Cea708CCParser$DisplayListener;->emitEvent(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;)V

    return-void
.end method

.method private parseC0([BI)I
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    .line 2
    :try_start_0
    aget-byte v0, p1, p2

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v0, p2, 0x1

    aget-byte p1, p1, v0

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p2, 0x2

    invoke-static {p1, p2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const-string v1, "EUC-KR"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 5
    iget-object p0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Cea708CCParser"

    const-string v0, "P16 Code - Could not find supported encoding"

    .line 6
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    add-int/lit8 p2, p2, 0x2

    goto :goto_1

    .line 7
    :cond_2
    iget p1, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_3

    const/16 v0, 0x17

    if-gt p1, v0, :cond_3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 8
    :cond_3
    iget p1, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    if-eqz p1, :cond_6

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 9
    :pswitch_0
    new-instance v0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/support/v4/media/subtitle/Cea708CCParser;->emitCaptionEvent(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_1

    .line 10
    :pswitch_1
    iget-object p0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 11
    :pswitch_2
    new-instance v0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/support/v4/media/subtitle/Cea708CCParser;->emitCaptionEvent(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_1

    .line 12
    :cond_4
    new-instance v0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/support/v4/media/subtitle/Cea708CCParser;->emitCaptionEvent(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_1

    .line 13
    :cond_5
    new-instance v0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/support/v4/media/subtitle/Cea708CCParser;->emitCaptionEvent(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;)V

    :cond_6
    :goto_1
    return p2

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseC1([BI)I
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    const/16 v2, 0xf

    const/4 v3, 0x5

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    :pswitch_1
    add-int/lit16 v12, v1, -0x98

    .line 2
    aget-byte v1, p1, p2

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    move v13, v10

    goto :goto_0

    :cond_0
    move v13, v6

    .line 3
    :goto_0
    aget-byte v1, p1, p2

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    move v14, v10

    goto :goto_1

    :cond_1
    move v14, v6

    .line 4
    :goto_1
    aget-byte v1, p1, p2

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    move v15, v10

    goto :goto_2

    :cond_2
    move v15, v6

    .line 5
    :goto_2
    aget-byte v1, p1, p2

    and-int/lit8 v16, v1, 0x7

    add-int/lit8 v1, p2, 0x1

    .line 6
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3

    move/from16 v17, v10

    goto :goto_3

    :cond_3
    move/from16 v17, v6

    .line 7
    :goto_3
    aget-byte v1, p1, v1

    and-int/lit8 v18, v1, 0x7f

    add-int/lit8 v1, p2, 0x2

    .line 8
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, p2, 0x3

    .line 9
    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v20, v5, 0x4

    .line 10
    aget-byte v3, p1, v3

    and-int/lit8 v21, v3, 0xf

    add-int/lit8 v2, p2, 0x4

    .line 11
    aget-byte v2, p1, v2

    and-int/lit8 v22, v2, 0x3f

    add-int/lit8 v2, p2, 0x5

    .line 12
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0x38

    shr-int/lit8 v24, v3, 0x3

    .line 13
    aget-byte v2, p1, v2

    and-int/lit8 v23, v2, 0x7

    add-int/lit8 v2, p2, 0x6

    .line 14
    new-instance v3, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;

    const/16 v4, 0x10

    new-instance v5, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindow;

    move-object v11, v5

    move/from16 v19, v1

    invoke-direct/range {v11 .. v24}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindow;-><init>(IZZZIZIIIIIII)V

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/support/v4/media/subtitle/Cea708CCParser;->emitCaptionEvent(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_9

    .line 15
    :pswitch_2
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xc0

    shr-int/2addr v1, v5

    .line 16
    aget-byte v4, p1, p2

    and-int/lit8 v4, v4, 0x30

    shr-int/2addr v4, v8

    .line 17
    aget-byte v11, p1, p2

    and-int/2addr v11, v7

    shr-int/lit8 v11, v11, 0x2

    .line 18
    aget-byte v12, p1, p2

    and-int/2addr v12, v9

    .line 19
    new-instance v14, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;

    invoke-direct {v14, v1, v4, v11, v12}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/lit8 v1, p2, 0x1

    .line 20
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xc0

    shr-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x2

    aget-byte v11, p1, v5

    and-int/lit16 v11, v11, 0x80

    shr-int/lit8 v3, v11, 0x5

    or-int v16, v4, v3

    .line 21
    aget-byte v3, p1, v1

    and-int/lit8 v3, v3, 0x30

    shr-int/2addr v3, v8

    .line 22
    aget-byte v4, p1, v1

    and-int/2addr v4, v7

    shr-int/lit8 v4, v4, 0x2

    .line 23
    aget-byte v1, p1, v1

    and-int/2addr v1, v9

    .line 24
    new-instance v15, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;

    invoke-direct {v15, v6, v3, v4, v1}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;-><init>(IIII)V

    .line 25
    aget-byte v1, p1, v5

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4

    move/from16 v17, v10

    goto :goto_4

    :cond_4
    move/from16 v17, v6

    .line 26
    :goto_4
    aget-byte v1, p1, v5

    and-int/lit8 v1, v1, 0x30

    shr-int/lit8 v18, v1, 0x4

    .line 27
    aget-byte v1, p1, v5

    and-int/2addr v1, v7

    shr-int/lit8 v19, v1, 0x2

    .line 28
    aget-byte v1, p1, v5

    and-int/lit8 v20, v1, 0x3

    add-int/lit8 v1, p2, 0x3

    .line 29
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v22, v3, 0x4

    .line 30
    aget-byte v3, p1, v1

    and-int/2addr v3, v7

    shr-int/lit8 v21, v3, 0x2

    .line 31
    aget-byte v1, p1, v1

    and-int/lit8 v23, v1, 0x3

    add-int/lit8 v1, p2, 0x4

    .line 32
    new-instance v3, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;

    new-instance v4, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindowAttr;

    move-object v13, v4

    invoke-direct/range {v13 .. v23}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindowAttr;-><init>(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;IZIIIIII)V

    invoke-direct {v3, v2, v4}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/support/v4/media/subtitle/Cea708CCParser;->emitCaptionEvent(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_5

    .line 33
    :pswitch_3
    aget-byte v1, p1, p2

    and-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    .line 34
    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x3f

    add-int/lit8 v3, p2, 0x2

    .line 35
    new-instance v4, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;

    const/16 v5, 0xe

    new-instance v6, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionPenLocation;

    invoke-direct {v6, v1, v2}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionPenLocation;-><init>(II)V

    invoke-direct {v4, v5, v6}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v4}, Landroid/support/v4/media/subtitle/Cea708CCParser;->emitCaptionEvent(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;)V

    move v2, v3

    goto/16 :goto_9

    .line 36
    :pswitch_4
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xc0

    shr-int/2addr v1, v5

    .line 37
    aget-byte v2, p1, p2

    and-int/lit8 v2, v2, 0x30

    shr-int/2addr v2, v8

    .line 38
    aget-byte v3, p1, p2

    and-int/2addr v3, v7

    shr-int/lit8 v3, v3, 0x2

    .line 39
    aget-byte v4, p1, p2

    and-int/2addr v4, v9

    .line 40
    new-instance v11, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;

    invoke-direct {v11, v1, v2, v3, v4}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/lit8 v1, p2, 0x1

    .line 41
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xc0

    shr-int/2addr v2, v5

    .line 42
    aget-byte v3, p1, v1

    and-int/lit8 v3, v3, 0x30

    shr-int/2addr v3, v8

    .line 43
    aget-byte v4, p1, v1

    and-int/2addr v4, v7

    shr-int/lit8 v4, v4, 0x2

    .line 44
    aget-byte v5, p1, v1

    and-int/2addr v5, v9

    .line 45
    new-instance v12, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;

    invoke-direct {v12, v2, v3, v4, v5}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/2addr v1, v10

    .line 46
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x30

    shr-int/2addr v2, v8

    .line 47
    aget-byte v3, p1, v1

    and-int/2addr v3, v7

    shr-int/lit8 v3, v3, 0x2

    .line 48
    aget-byte v4, p1, v1

    and-int/2addr v4, v9

    .line 49
    new-instance v5, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;

    invoke-direct {v5, v6, v2, v3, v4}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/2addr v1, v10

    .line 50
    new-instance v2, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;

    const/16 v3, 0xd

    new-instance v4, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionPenColor;

    invoke-direct {v4, v11, v12, v5}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionPenColor;-><init>(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;)V

    invoke-direct {v2, v3, v4}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Landroid/support/v4/media/subtitle/Cea708CCParser;->emitCaptionEvent(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;)V

    :goto_5
    move v2, v1

    goto/16 :goto_9

    .line 51
    :pswitch_5
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v14, v1, 0x4

    .line 52
    aget-byte v1, p1, p2

    and-int/lit8 v12, v1, 0x3

    .line 53
    aget-byte v1, p1, p2

    and-int/2addr v1, v7

    shr-int/lit8 v13, v1, 0x2

    add-int/lit8 v1, p2, 0x1

    .line 54
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_5

    move/from16 v18, v10

    goto :goto_6

    :cond_5
    move/from16 v18, v6

    .line 55
    :goto_6
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    move/from16 v17, v10

    goto :goto_7

    :cond_6
    move/from16 v17, v6

    .line 56
    :goto_7
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x38

    shr-int/lit8 v16, v2, 0x3

    .line 57
    aget-byte v1, p1, v1

    and-int/lit8 v15, v1, 0x7

    add-int/lit8 v1, p2, 0x2

    .line 58
    new-instance v2, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;

    new-instance v3, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionPenAttr;

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionPenAttr;-><init>(IIIIIZZ)V

    invoke-direct {v2, v7, v3}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Landroid/support/v4/media/subtitle/Cea708CCParser;->emitCaptionEvent(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_5

    .line 59
    :pswitch_6
    new-instance v1, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/support/v4/media/subtitle/Cea708CCParser;->emitCaptionEvent(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_8

    .line 60
    :pswitch_7
    new-instance v1, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/support/v4/media/subtitle/Cea708CCParser;->emitCaptionEvent(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_8

    .line 61
    :pswitch_8
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    .line 62
    new-instance v3, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;

    const/16 v4, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/support/v4/media/subtitle/Cea708CCParser;->emitCaptionEvent(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_9

    .line 63
    :pswitch_9
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    .line 64
    new-instance v3, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;

    const/16 v4, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/support/v4/media/subtitle/Cea708CCParser;->emitCaptionEvent(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_9

    .line 65
    :pswitch_a
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    .line 66
    new-instance v3, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/support/v4/media/subtitle/Cea708CCParser;->emitCaptionEvent(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_9

    .line 67
    :pswitch_b
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    .line 68
    new-instance v3, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v5, v1}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/support/v4/media/subtitle/Cea708CCParser;->emitCaptionEvent(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_9

    .line 69
    :pswitch_c
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    .line 70
    new-instance v4, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v4, v3, v1}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v4}, Landroid/support/v4/media/subtitle/Cea708CCParser;->emitCaptionEvent(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_9

    .line 71
    :pswitch_d
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    .line 72
    new-instance v3, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v8, v1}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/support/v4/media/subtitle/Cea708CCParser;->emitCaptionEvent(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_9

    :pswitch_e
    add-int/lit8 v1, v1, -0x80

    .line 73
    new-instance v2, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v9, v1}, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Landroid/support/v4/media/subtitle/Cea708CCParser;->emitCaptionEvent(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionEvent;)V

    :goto_8
    move/from16 v2, p2

    :goto_9
    return v2

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private parseC2([BI)I
    .locals 1

    .line 1
    iget p1, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget p1, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_2

    const/16 v0, 0x17

    if-gt p1, v0, :cond_2

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 4
    :cond_2
    iget p0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    const/16 p1, 0x18

    if-lt p0, p1, :cond_3

    const/16 p1, 0x1f

    if-gt p0, p1, :cond_3

    add-int/lit8 p2, p2, 0x3

    :cond_3
    :goto_0
    return p2
.end method

.method private parseC3([BI)I
    .locals 1

    .line 1
    iget p1, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    const/16 v0, 0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    add-int/lit8 p2, p2, 0x4

    goto :goto_0

    .line 2
    :cond_0
    iget p0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    const/16 p1, 0x88

    if-lt p0, p1, :cond_1

    const/16 p1, 0x8f

    if-gt p0, p1, :cond_1

    add-int/lit8 p2, p2, 0x5

    :cond_1
    :goto_0
    return p2
.end method

.method private parseExt1([BI)I
    .locals 3

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    add-int/lit8 p2, p2, 0x1

    .line 2
    iget v0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    if-ltz v0, :cond_0

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/subtitle/Cea708CCParser;->parseC2([BI)I

    move-result p2

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    const/16 v2, 0x80

    if-lt v0, v2, :cond_1

    const/16 v2, 0x9f

    if-gt v0, v2, :cond_1

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/subtitle/Cea708CCParser;->parseC3([BI)I

    move-result p2

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    const/16 v2, 0x20

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_2

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/subtitle/Cea708CCParser;->parseG2([BI)I

    goto :goto_0

    .line 8
    :cond_2
    iget v0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    const/16 v2, 0xa0

    if-lt v0, v2, :cond_3

    if-gt v0, v1, :cond_3

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/subtitle/Cea708CCParser;->parseG3([BI)I

    :cond_3
    :goto_0
    return p2
.end method

.method private parseG0([BI)I
    .locals 1

    .line 1
    iget p1, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    sget-object p1, Landroid/support/v4/media/subtitle/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return p2
.end method

.method private parseG1([BI)I
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    int-to-char p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return p2
.end method

.method private parseG2([BI)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    const/16 p1, 0x20

    if-eq p0, p1, :cond_0

    const/16 p1, 0x21

    if-eq p0, p1, :cond_0

    const/16 p1, 0x30

    :cond_0
    return p2
.end method

.method private parseG3([BI)I
    .locals 0

    return p2
.end method

.method private parseServiceBlockData([BI)I
    .locals 3

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    add-int/lit8 p2, p2, 0x1

    .line 2
    iget v0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/subtitle/Cea708CCParser;->parseExt1([BI)I

    move-result p2

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_1

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/subtitle/Cea708CCParser;->parseC0([BI)I

    move-result p2

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    const/16 v2, 0x80

    if-lt v0, v2, :cond_2

    const/16 v2, 0x9f

    if-gt v0, v2, :cond_2

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/subtitle/Cea708CCParser;->parseC1([BI)I

    move-result p2

    goto :goto_0

    .line 7
    :cond_2
    iget v0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    const/16 v2, 0x20

    if-lt v0, v2, :cond_3

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_3

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/subtitle/Cea708CCParser;->parseG0([BI)I

    goto :goto_0

    .line 9
    :cond_3
    iget v0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser;->mCommand:I

    const/16 v2, 0xa0

    if-lt v0, v2, :cond_4

    if-gt v0, v1, :cond_4

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/subtitle/Cea708CCParser;->parseG1([BI)I

    :cond_4
    :goto_0
    return p2
.end method


# virtual methods
.method public parse([B)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/subtitle/Cea708CCParser;->parseServiceBlockData([BI)I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/Cea708CCParser;->emitCaptionBuffer()V

    return-void
.end method
