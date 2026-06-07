.class public Lb/a/a/n1/o;
.super Ljava/lang/Object;
.source "HighLightBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/n1/o$a;
    }
.end annotation


# instance fields
.field public a:Landroid/text/SpannableStringBuilder;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/n1/o;->b:Ljava/lang/String;

    .line 3
    new-instance p1, Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lb/a/a/n1/o;->b:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lb/a/a/n1/o;->a:Landroid/text/SpannableStringBuilder;

    return-void
.end method


# virtual methods
.method public a()Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 13
    iget-object v0, p0, Lb/a/a/n1/o;->a:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Lb/a/a/n1/o;
    .locals 4

    .line 6
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lb/a/a/n1/o;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 v0, -0x1

    move v1, v0

    move v2, v1

    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 10
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto :goto_0

    :cond_0
    if-le v1, v0, :cond_1

    .line 11
    new-instance p1, Lb/a/a/n1/o$a;

    invoke-direct {p1, p2}, Lb/a/a/n1/o$a;-><init>(I)V

    .line 12
    iget-object p2, p0, Lb/a/a/n1/o;->a:Landroid/text/SpannableStringBuilder;

    iget-object p1, p1, Lb/a/a/n1/o$a;->a:Ljava/lang/Object;

    const/16 v0, 0x21

    invoke-virtual {p2, p1, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-object p0
.end method

.method public a(Ljava/lang/String;IZ)Lb/a/a/n1/o;
    .locals 5

    .line 1
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lb/a/a/n1/o;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lb/a/a/n1/o$a;

    invoke-direct {v0, p2}, Lb/a/a/n1/o$a;-><init>(I)V

    .line 5
    iget-object v1, p0, Lb/a/a/n1/o;->a:Landroid/text/SpannableStringBuilder;

    iget-object v0, v0, Lb/a/a/n1/o$a;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-eqz p3, :cond_0

    :cond_1
    return-object p0
.end method

.method public b(Ljava/lang/String;I)Lb/a/a/n1/o;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lb/a/a/n1/o;->a(Ljava/lang/String;IZ)Lb/a/a/n1/o;

    return-object p0
.end method
