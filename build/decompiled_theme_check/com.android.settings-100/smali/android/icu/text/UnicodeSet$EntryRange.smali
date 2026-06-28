.class public Landroid/icu/text/UnicodeSet$EntryRange;
.super Ljava/lang/Object;
.source "UnicodeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryRange"
.end annotation


# instance fields
.field public codepoint:I

.field public codepointEnd:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 4148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4150
    iget v1, p0, Landroid/icu/text/UnicodeSet$EntryRange;->codepoint:I

    iget v2, p0, Landroid/icu/text/UnicodeSet$EntryRange;->codepointEnd:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-static {v0, v1, v3}, Landroid/icu/text/UnicodeSet;->access$100(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4151
    :cond_0
    invoke-static {v0, v1, v3}, Landroid/icu/text/UnicodeSet;->access$100(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/icu/text/UnicodeSet$EntryRange;->codepointEnd:I

    invoke-static {v0, p0, v3}, Landroid/icu/text/UnicodeSet;->access$100(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 4152
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
