.class final Landroid/icu/text/RBNFChinesePostProcessor;
.super Ljava/lang/Object;
.source "RBNFChinesePostProcessor.java"

# interfaces
.implements Landroid/icu/text/RBNFPostProcessor;


# static fields
.field private static final rulesetNames:[Ljava/lang/String;


# instance fields
.field private format:I

.field private longForm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "%traditional"

    const-string v1, "%simplified"

    const-string v2, "%accounting"

    const-string v3, "%time"

    .line 21
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/RBNFChinesePostProcessor;->rulesetNames:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public process(Ljava/lang/StringBuilder;Landroid/icu/text/NFRuleSet;)V
    .locals 11

    .line 41
    invoke-virtual {p2}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 42
    :goto_0
    sget-object v2, Landroid/icu/text/RBNFChinesePostProcessor;->rulesetNames:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ge v1, v3, :cond_3

    .line 43
    aget-object v2, v2, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    iput v1, p0, Landroid/icu/text/RBNFChinesePostProcessor;->format:I

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_1

    :cond_0
    move p2, v0

    goto :goto_2

    :cond_1
    :goto_1
    move p2, v5

    .line 45
    :goto_2
    iput-boolean p2, p0, Landroid/icu/text/RBNFChinesePostProcessor;->longForm:Z

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_3
    :goto_3
    iget-boolean p2, p0, Landroid/icu/text/RBNFChinesePostProcessor;->longForm:Z

    const/4 v1, -0x1

    if-eqz p2, :cond_5

    const-string p0, "*"

    .line 52
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p2

    :goto_4
    if-eq p2, v1, :cond_4

    add-int/lit8 v0, p2, 0x1

    .line 53
    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1, p0, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p2

    goto :goto_4

    :cond_4
    return-void

    :cond_5
    new-array p2, v4, [[Ljava/lang/String;

    const-string/jumbo v2, "\u3007"

    const-string/jumbo v3, "\u5104"

    const-string/jumbo v6, "\u842c"

    const-string/jumbo v7, "\u5146"

    .line 60
    filled-new-array {v6, v3, v7, v2}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, p2, v0

    const-string/jumbo v8, "\u4e07"

    const-string/jumbo v9, "\u4ebf"

    filled-new-array {v8, v9, v7, v2}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v5

    const-string/jumbo v2, "\u96f6"

    filled-new-array {v6, v3, v7, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, p2, v3

    .line 84
    iget v2, p0, Landroid/icu/text/RBNFChinesePostProcessor;->format:I

    aget-object v2, p2, v2

    move v6, v0

    .line 85
    :goto_5
    array-length v7, v2

    sub-int/2addr v7, v5

    const/16 v8, 0x7c

    if-ge v6, v7, :cond_7

    .line 86
    aget-object v7, v2, v6

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v1, :cond_6

    .line 88
    aget-object v9, v2, v6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v7, v9

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    const-string/jumbo v2, "\u9ede"

    .line 93
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_8

    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 99
    :cond_8
    iget p0, p0, Landroid/icu/text/RBNFChinesePostProcessor;->format:I

    aget-object p0, p2, p0

    aget-object p0, p0, v4

    move p2, v0

    move v6, v1

    :goto_6
    const/16 v7, 0x2a

    if-ltz v2, :cond_b

    const-string/jumbo v9, "|"

    .line 101
    invoke-virtual {p1, v9, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v9

    .line 102
    invoke-virtual {p1, p0, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v9, :cond_a

    if-lez v2, :cond_9

    add-int/lit8 v10, v2, -0x1

    .line 105
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-eq v10, v7, :cond_9

    move v7, v3

    goto :goto_7

    :cond_9
    move v7, v5

    goto :goto_7

    :cond_a
    move v7, v0

    :goto_7
    add-int/lit8 v9, v9, -0x1

    mul-int/2addr p2, v4

    add-int/2addr p2, v7

    packed-switch p2, :pswitch_data_0

    .line 151
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    add-int/lit8 p2, v2, -0x1

    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {p1, p2, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_8

    :pswitch_1
    add-int/lit8 p2, v6, -0x1

    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v6, v2

    invoke-virtual {p1, p2, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_9

    :pswitch_2
    add-int/lit8 p2, v2, -0x1

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {p1, p2, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_8
    move p2, v0

    move v6, v1

    goto :goto_b

    :pswitch_3
    move v6, v2

    goto :goto_a

    :goto_9
    :pswitch_4
    move v6, v1

    :goto_a
    move p2, v7

    :goto_b
    move v2, v9

    goto :goto_6

    .line 155
    :cond_b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    :cond_c
    :goto_c
    add-int/2addr p0, v1

    if-ltz p0, :cond_e

    .line 156
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p2

    if-eq p2, v7, :cond_d

    if-ne p2, v8, :cond_c

    :cond_d
    add-int/lit8 p2, p0, 0x1

    .line 158
    invoke-virtual {p1, p0, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
