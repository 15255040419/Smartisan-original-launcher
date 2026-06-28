.class Landroid/icu/text/TransliteratorIDParser$SingleID;
.super Ljava/lang/Object;
.source "TransliteratorIDParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorIDParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingleID"
.end annotation


# instance fields
.field public basicID:Ljava/lang/String;

.field public canonID:Ljava/lang/String;

.field public filter:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/TransliteratorIDParser$SingleID;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getInstance()Landroid/icu/text/Transliterator;
    .locals 2

    .line 128
    iget-object v0, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->getBasicInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    goto :goto_1

    .line 129
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    const-string v1, "Any-Null"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->getBasicInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    .line 134
    iget-object p0, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 135
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1, p0}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/icu/text/Transliterator;->setFilter(Landroid/icu/text/UnicodeFilter;)V

    :cond_2
    return-object v0
.end method
