.class Landroid/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;
.super Landroid/icu/impl/UResource$Sink;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppendItemFormatsSink"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Landroid/icu/text/DateTimePatternGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 197
    const-class v0, Landroid/icu/text/DateTimePatternGenerator;

    return-void
.end method

.method private constructor <init>(Landroid/icu/text/DateTimePatternGenerator;)V
    .locals 0

    .line 197
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;->this$0:Landroid/icu/text/DateTimePatternGenerator;

    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/DateTimePatternGenerator;Landroid/icu/text/DateTimePatternGenerator$1;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Landroid/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;-><init>(Landroid/icu/text/DateTimePatternGenerator;)V

    return-void
.end method


# virtual methods
.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 4

    .line 200
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    .line 201
    :goto_0
    invoke-interface {p3, v0, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    invoke-static {p1}, Landroid/icu/text/DateTimePatternGenerator;->getAppendFormatNumber(Landroid/icu/impl/UResource$Key;)I

    move-result v1

    .line 204
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;->this$0:Landroid/icu/text/DateTimePatternGenerator;

    invoke-virtual {v2, v1}, Landroid/icu/text/DateTimePatternGenerator;->getAppendItemFormat(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 205
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;->this$0:Landroid/icu/text/DateTimePatternGenerator;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/icu/text/DateTimePatternGenerator;->setAppendItemFormat(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
