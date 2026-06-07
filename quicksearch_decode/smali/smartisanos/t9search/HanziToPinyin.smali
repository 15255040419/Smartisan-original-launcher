.class public Lsmartisanos/t9search/HanziToPinyin;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# static fields
.field private static final sInstance:Lsmartisanos/t9search/HanziToPinyin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsmartisanos/t9search/HanziToPinyin;

    invoke-direct {v0}, Lsmartisanos/t9search/HanziToPinyin;-><init>()V

    sput-object v0, Lsmartisanos/t9search/HanziToPinyin;->sInstance:Lsmartisanos/t9search/HanziToPinyin;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lsmartisanos/t9search/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    new-instance v3, Lsmartisanos/t9search/HanziToPinyin$Token;

    invoke-direct {v3}, Lsmartisanos/t9search/HanziToPinyin$Token;-><init>()V

    const/4 v4, 0x1

    iput v4, v3, Lsmartisanos/t9search/HanziToPinyin$Token;->type:I

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lsmartisanos/t9search/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lsmartisanos/t9search/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method


# static methods
.method public static getInstance()Lsmartisanos/t9search/HanziToPinyin;
    .locals 1

    sget-object v0, Lsmartisanos/t9search/HanziToPinyin;->sInstance:Lsmartisanos/t9search/HanziToPinyin;

    return-object v0
.end method
