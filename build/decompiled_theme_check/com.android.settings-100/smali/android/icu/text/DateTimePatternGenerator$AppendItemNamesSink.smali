.class Landroid/icu/text/DateTimePatternGenerator$AppendItemNamesSink;
.super Landroid/icu/impl/UResource$Sink;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppendItemNamesSink"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/text/DateTimePatternGenerator;


# direct methods
.method private constructor <init>(Landroid/icu/text/DateTimePatternGenerator;)V
    .locals 0

    .line 211
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator$AppendItemNamesSink;->this$0:Landroid/icu/text/DateTimePatternGenerator;

    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/DateTimePatternGenerator;Landroid/icu/text/DateTimePatternGenerator$1;)V
    .locals 0

    .line 211
    invoke-direct {p0, p1}, Landroid/icu/text/DateTimePatternGenerator$AppendItemNamesSink;-><init>(Landroid/icu/text/DateTimePatternGenerator;)V

    return-void
.end method


# virtual methods
.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 6

    .line 214
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    move v1, v0

    .line 215
    :goto_0
    invoke-interface {p3, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 216
    invoke-static {p1}, Landroid/icu/text/DateTimePatternGenerator;->access$000(Landroid/icu/impl/UResource$Key;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_2

    .line 218
    :cond_0
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v3

    move v4, v0

    .line 219
    :goto_1
    invoke-interface {v3, v4, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "dn"

    .line 220
    invoke-virtual {p1, v5}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 221
    :cond_1
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator$AppendItemNamesSink;->this$0:Landroid/icu/text/DateTimePatternGenerator;

    invoke-virtual {v3, v2}, Landroid/icu/text/DateTimePatternGenerator;->getAppendItemName(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 222
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator$AppendItemNamesSink;->this$0:Landroid/icu/text/DateTimePatternGenerator;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/icu/text/DateTimePatternGenerator;->setAppendItemName(ILjava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
