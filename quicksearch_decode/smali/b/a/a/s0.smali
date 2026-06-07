.class public Lb/a/a/s0;
.super Lb/a/a/i;
.source "SpecialPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/s0$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/CharSequence;

.field public c:Lcom/android/quicksearchbox/Source;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/a/a/i;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lb/a/a/s0;->a:I

    .line 3
    iput p1, p0, Lb/a/a/s0;->a:I

    .line 4
    iput-object p2, p0, Lb/a/a/s0;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/quicksearchbox/Suggestion;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lb/a/a/s0;->a:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 2
    iget-object p1, p0, Lb/a/a/s0;->b:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1

    :cond_1
    const v0, 0x7f1000ae

    goto :goto_1

    :cond_2
    const v0, 0x7f1000d3

    goto :goto_1

    :cond_3
    const v0, 0x7f10006a

    :goto_1
    if-gez v0, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 2

    .line 1
    iget v0, p0, Lb/a/a/s0;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/s0;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget v0, p0, Lb/a/a/s0;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 2

    .line 1
    iget v0, p0, Lb/a/a/s0;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 2

    .line 1
    iget v0, p0, Lb/a/a/s0;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getShortcutId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestionLogType()Ljava/lang/String;
    .locals 1

    const-string v0, "special pos log"

    return-object v0
.end method

.method public getSuggestionSource()Lcom/android/quicksearchbox/Source;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/s0;->c:Lcom/android/quicksearchbox/Source;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lb/a/a/s0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/a/s0$b;-><init>(Lb/a/a/s0$a;)V

    iput-object v0, p0, Lb/a/a/s0;->c:Lcom/android/quicksearchbox/Source;

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/s0;->c:Lcom/android/quicksearchbox/Source;

    return-object v0
.end method

.method public isHistorySuggestion()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSuggestionShortcut()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/a/s0;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
