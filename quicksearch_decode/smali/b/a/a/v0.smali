.class public Lb/a/a/v0;
.super Ljava/lang/Object;
.source "SuggestionData.java"

# interfaces
.implements Lcom/android/quicksearchbox/Suggestion;


# instance fields
.field public final a:Lcom/android/quicksearchbox/Source;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Z

.field public p:Z

.field public q:Lcom/android/quicksearchbox/SuggestionExtras;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/Source;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/v0;->a:Lcom/android/quicksearchbox/Source;

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, ","

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lb/a/a/v0;
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/v0;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lb/a/a/v0;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lb/a/a/v0;->i:Z

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lb/a/a/v0;
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/v0;->f:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lb/a/a/v0;
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/v0;->g:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lb/a/a/v0;
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/v0;->j:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lb/a/a/v0;
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/v0;->k:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    const-class v2, Lb/a/a/v0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lb/a/a/v0;

    .line 3
    iget-object v2, p0, Lb/a/a/v0;->b:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 4
    iget-object v2, p1, Lb/a/a/v0;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 5
    :cond_3
    iget-object v3, p1, Lb/a/a/v0;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget-object v2, p0, Lb/a/a/v0;->f:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 7
    iget-object v2, p1, Lb/a/a/v0;->f:Ljava/lang/String;

    if-eqz v2, :cond_6

    return v1

    .line 8
    :cond_5
    iget-object v3, p1, Lb/a/a/v0;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 9
    :cond_6
    iget-object v2, p0, Lb/a/a/v0;->g:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 10
    iget-object v2, p1, Lb/a/a/v0;->g:Ljava/lang/String;

    if-eqz v2, :cond_8

    return v1

    .line 11
    :cond_7
    iget-object v3, p1, Lb/a/a/v0;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 12
    :cond_8
    iget-object v2, p0, Lb/a/a/v0;->j:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 13
    iget-object v2, p1, Lb/a/a/v0;->j:Ljava/lang/String;

    if-eqz v2, :cond_a

    return v1

    .line 14
    :cond_9
    iget-object v3, p1, Lb/a/a/v0;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 15
    :cond_a
    iget-object v2, p0, Lb/a/a/v0;->k:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 16
    iget-object v2, p1, Lb/a/a/v0;->k:Ljava/lang/String;

    if-eqz v2, :cond_c

    return v1

    .line 17
    :cond_b
    iget-object v3, p1, Lb/a/a/v0;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 18
    :cond_c
    iget-object v2, p0, Lb/a/a/v0;->l:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 19
    iget-object v2, p1, Lb/a/a/v0;->l:Ljava/lang/String;

    if-eqz v2, :cond_e

    return v1

    .line 20
    :cond_d
    iget-object v3, p1, Lb/a/a/v0;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 21
    :cond_e
    iget-object v2, p0, Lb/a/a/v0;->n:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 22
    iget-object v2, p1, Lb/a/a/v0;->n:Ljava/lang/String;

    if-eqz v2, :cond_10

    return v1

    .line 23
    :cond_f
    iget-object v3, p1, Lb/a/a/v0;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 24
    :cond_10
    iget-object v2, p0, Lb/a/a/v0;->h:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 25
    iget-object v2, p1, Lb/a/a/v0;->h:Ljava/lang/String;

    if-eqz v2, :cond_12

    return v1

    .line 26
    :cond_11
    iget-object v3, p1, Lb/a/a/v0;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 27
    :cond_12
    iget-object v2, p0, Lb/a/a/v0;->a:Lcom/android/quicksearchbox/Source;

    if-nez v2, :cond_13

    .line 28
    iget-object v2, p1, Lb/a/a/v0;->a:Lcom/android/quicksearchbox/Source;

    if-eqz v2, :cond_14

    return v1

    .line 29
    :cond_13
    iget-object v3, p1, Lb/a/a/v0;->a:Lcom/android/quicksearchbox/Source;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    return v1

    .line 30
    :cond_14
    iget-boolean v2, p0, Lb/a/a/v0;->i:Z

    iget-boolean v3, p1, Lb/a/a/v0;->i:Z

    if-eq v2, v3, :cond_15

    return v1

    .line 31
    :cond_15
    iget-object v2, p0, Lb/a/a/v0;->m:Ljava/lang/String;

    if-nez v2, :cond_16

    .line 32
    iget-object v2, p1, Lb/a/a/v0;->m:Ljava/lang/String;

    if-eqz v2, :cond_17

    return v1

    .line 33
    :cond_16
    iget-object v3, p1, Lb/a/a/v0;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    return v1

    .line 34
    :cond_17
    iget-object v2, p0, Lb/a/a/v0;->c:Ljava/lang/String;

    if-nez v2, :cond_18

    .line 35
    iget-object v2, p1, Lb/a/a/v0;->c:Ljava/lang/String;

    if-eqz v2, :cond_19

    return v1

    .line 36
    :cond_18
    iget-object v3, p1, Lb/a/a/v0;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    return v1

    .line 37
    :cond_19
    iget-object v2, p0, Lb/a/a/v0;->d:Ljava/lang/String;

    if-nez v2, :cond_1a

    .line 38
    iget-object p1, p1, Lb/a/a/v0;->d:Ljava/lang/String;

    if-eqz p1, :cond_1b

    return v1

    .line 39
    :cond_1a
    iget-object p1, p1, Lb/a/a/v0;->d:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    return v1

    :cond_1b
    return v0
.end method

.method public f(Ljava/lang/String;)Lb/a/a/v0;
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/v0;->l:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lb/a/a/v0;
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/v0;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getExtras()Lcom/android/quicksearchbox/SuggestionExtras;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/v0;->q:Lcom/android/quicksearchbox/SuggestionExtras;

    return-object v0
.end method

.method public getShortcutId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/v0;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionFormat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/v0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionIcon1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/v0;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionIcon2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/v0;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionIntentAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/v0;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/a/a/v0;->a:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getDefaultIntentAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionIntentComponent()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/v0;->a:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getIntentComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionIntentDataString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/v0;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionIntentExtraData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/v0;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionLogType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/v0;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionQuery()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/v0;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionSource()Lcom/android/quicksearchbox/Source;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/v0;->a:Lcom/android/quicksearchbox/Source;

    return-object v0
.end method

.method public getSuggestionText1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/v0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionText2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/v0;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionText2Url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/v0;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lb/a/a/v0;
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/v0;->m:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/a/v0;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 2
    iget-object v3, p0, Lb/a/a/v0;->f:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 3
    iget-object v3, p0, Lb/a/a/v0;->g:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 4
    iget-object v3, p0, Lb/a/a/v0;->j:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5
    iget-object v3, p0, Lb/a/a/v0;->k:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 6
    iget-object v3, p0, Lb/a/a/v0;->l:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 7
    iget-object v3, p0, Lb/a/a/v0;->n:Ljava/lang/String;

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 8
    iget-object v3, p0, Lb/a/a/v0;->h:Ljava/lang/String;

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 9
    iget-object v3, p0, Lb/a/a/v0;->a:Lcom/android/quicksearchbox/Source;

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 10
    iget-boolean v3, p0, Lb/a/a/v0;->i:Z

    if-eqz v3, :cond_9

    const/16 v3, 0x4cf

    goto :goto_9

    :cond_9
    const/16 v3, 0x4d5

    :goto_9
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 11
    iget-object v3, p0, Lb/a/a/v0;->m:Ljava/lang/String;

    if-nez v3, :cond_a

    move v3, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 12
    iget-object v3, p0, Lb/a/a/v0;->c:Ljava/lang/String;

    if-nez v3, :cond_b

    move v3, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 13
    iget-object v2, p0, Lb/a/a/v0;->d:Ljava/lang/String;

    if-nez v2, :cond_c

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_c
    add-int/2addr v0, v1

    return v0
.end method

.method public i(Ljava/lang/String;)Lb/a/a/v0;
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/v0;->c:Ljava/lang/String;

    return-object p0
.end method

.method public isHistorySuggestion()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/v0;->p:Z

    return v0
.end method

.method public isSpinnerWhileRefreshing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/v0;->i:Z

    return v0
.end method

.method public isSuggestionShortcut()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/v0;->o:Z

    return v0
.end method

.method public isWebSearchSuggestion()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/a/a/v0;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public j(Ljava/lang/String;)Lb/a/a/v0;
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/v0;->d:Ljava/lang/String;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lb/a/a/v0;
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/v0;->e:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SuggestionData("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lb/a/a/v0;->a:Lcom/android/quicksearchbox/Source;

    invoke-interface {v1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-static {v0, v2, v1}, Lb/a/a/v0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lb/a/a/v0;->c:Ljava/lang/String;

    const-string v2, "text1"

    invoke-static {v0, v2, v1}, Lb/a/a/v0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lb/a/a/v0;->j:Ljava/lang/String;

    const-string v2, "intentAction"

    invoke-static {v0, v2, v1}, Lb/a/a/v0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lb/a/a/v0;->k:Ljava/lang/String;

    const-string v2, "intentData"

    invoke-static {v0, v2, v1}, Lb/a/a/v0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lb/a/a/v0;->m:Ljava/lang/String;

    const-string v2, "query"

    invoke-static {v0, v2, v1}, Lb/a/a/v0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lb/a/a/v0;->h:Ljava/lang/String;

    const-string v2, "shortcutid"

    invoke-static {v0, v2, v1}, Lb/a/a/v0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lb/a/a/v0;->n:Ljava/lang/String;

    const-string v2, "logtype"

    invoke-static {v0, v2, v1}, Lb/a/a/v0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
