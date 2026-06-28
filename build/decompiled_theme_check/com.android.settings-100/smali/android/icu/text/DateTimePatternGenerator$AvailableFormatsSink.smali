.class Landroid/icu/text/DateTimePatternGenerator$AvailableFormatsSink;
.super Landroid/icu/impl/UResource$Sink;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvailableFormatsSink"
.end annotation


# instance fields
.field returnInfo:Landroid/icu/text/DateTimePatternGenerator$PatternInfo;

.field final synthetic this$0:Landroid/icu/text/DateTimePatternGenerator;


# direct methods
.method public constructor <init>(Landroid/icu/text/DateTimePatternGenerator;Landroid/icu/text/DateTimePatternGenerator$PatternInfo;)V
    .locals 0

    .line 243
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator$AvailableFormatsSink;->this$0:Landroid/icu/text/DateTimePatternGenerator;

    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 244
    iput-object p2, p0, Landroid/icu/text/DateTimePatternGenerator$AvailableFormatsSink;->returnInfo:Landroid/icu/text/DateTimePatternGenerator$PatternInfo;

    return-void
.end method


# virtual methods
.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 7

    .line 249
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    .line 250
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator$AvailableFormatsSink;->this$0:Landroid/icu/text/DateTimePatternGenerator;

    invoke-static {v3, v2}, Landroid/icu/text/DateTimePatternGenerator;->access$100(Landroid/icu/text/DateTimePatternGenerator;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 253
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator$AvailableFormatsSink;->this$0:Landroid/icu/text/DateTimePatternGenerator;

    invoke-static {v3, v2}, Landroid/icu/text/DateTimePatternGenerator;->access$200(Landroid/icu/text/DateTimePatternGenerator;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v3

    .line 257
    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator$AvailableFormatsSink;->this$0:Landroid/icu/text/DateTimePatternGenerator;

    xor-int/lit8 v5, p3, 0x1

    iget-object v6, p0, Landroid/icu/text/DateTimePatternGenerator$AvailableFormatsSink;->returnInfo:Landroid/icu/text/DateTimePatternGenerator$PatternInfo;

    invoke-virtual {v4, v3, v2, v5, v6}, Landroid/icu/text/DateTimePatternGenerator;->addPatternWithSkeleton(Ljava/lang/String;Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
