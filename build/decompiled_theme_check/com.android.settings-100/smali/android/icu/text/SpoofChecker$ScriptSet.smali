.class Landroid/icu/text/SpoofChecker$ScriptSet;
.super Ljava/util/BitSet;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScriptSet"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1876
    invoke-direct {p0}, Ljava/util/BitSet;-><init>()V

    return-void
.end method


# virtual methods
.method public and(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1915
    invoke-virtual {p0, v0, p1}, Landroid/icu/text/SpoofChecker$ScriptSet;->clear(II)V

    add-int/lit8 p1, p1, 0x1

    const/16 v0, 0xb2

    .line 1916
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/SpoofChecker$ScriptSet;->clear(II)V

    return-void
.end method

.method public appendStringTo(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string/jumbo v0, "{ "

    .line 1928
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1929
    invoke-virtual {p0}, Landroid/icu/text/SpoofChecker$ScriptSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "- "

    .line 1930
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1931
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/SpoofChecker$ScriptSet;->isFull()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "* "

    .line 1932
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xb2

    if-ge v0, v1, :cond_3

    .line 1935
    invoke-virtual {p0, v0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1936
    invoke-static {v0}, Landroid/icu/lang/UScript;->getShortName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 1937
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string/jumbo p0, "}"

    .line 1941
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public isFull()Z
    .locals 1

    .line 1924
    invoke-virtual {p0}, Landroid/icu/text/SpoofChecker$ScriptSet;->cardinality()I

    move-result p0

    const/16 v0, 0xb2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAll()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xb2

    .line 1920
    invoke-virtual {p0, v0, v1}, Landroid/icu/text/SpoofChecker$ScriptSet;->set(II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<ScriptSet "

    .line 1947
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1948
    invoke-virtual {p0, v0}, Landroid/icu/text/SpoofChecker$ScriptSet;->appendStringTo(Ljava/lang/StringBuilder;)V

    const-string p0, ">"

    .line 1949
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1950
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
