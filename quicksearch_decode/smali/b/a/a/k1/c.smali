.class public Lb/a/a/k1/c;
.super Ljava/lang/Object;
.source "PreferenceControllerFactory.java"

# interfaces
.implements Lcom/android/quicksearchbox/preferences/PreferenceController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/k1/c$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/android/quicksearchbox/SearchSettings;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/quicksearchbox/preferences/PreferenceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/SearchSettings;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/k1/c;->a:Lcom/android/quicksearchbox/SearchSettings;

    .line 3
    iput-object p2, p0, Lb/a/a/k1/c;->b:Landroid/content/Context;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/a/a/k1/c;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/k1/c;->b:Landroid/content/Context;

    return-object v0
.end method

.method public a(Lcom/android/quicksearchbox/preferences/PreferenceController;Landroid/preference/Preference;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lb/a/a/k1/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/preferences/PreferenceController;->handlePreference(Landroid/preference/Preference;)V

    return-void
.end method

.method public handlePreference(Landroid/preference/Preference;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "search_corpora"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, p0, Lb/a/a/k1/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/b0;->p()Lcom/android/quicksearchbox/Corpora;

    move-result-object v0

    .line 4
    new-instance v1, Lb/a/a/k1/d;

    iget-object v2, p0, Lb/a/a/k1/c;->a:Lcom/android/quicksearchbox/SearchSettings;

    invoke-virtual {p0}, Lb/a/a/k1/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lb/a/a/k1/d;-><init>(Lcom/android/quicksearchbox/SearchSettings;Lcom/android/quicksearchbox/Corpora;Landroid/content/Context;)V

    invoke-virtual {p0, v1, p1}, Lb/a/a/k1/c;->a(Lcom/android/quicksearchbox/preferences/PreferenceController;Landroid/preference/Preference;)V

    goto :goto_0

    :cond_1
    const-string v1, "clear_shortcuts"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lb/a/a/k1/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/b0;->y()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    .line 7
    new-instance v1, Lb/a/a/k1/b;

    invoke-direct {v1, v0}, Lb/a/a/k1/b;-><init>(Lcom/android/quicksearchbox/ShortcutRepository;)V

    invoke-virtual {p0, v1, p1}, Lb/a/a/k1/c;->a(Lcom/android/quicksearchbox/preferences/PreferenceController;Landroid/preference/Preference;)V

    :goto_0
    return-void

    .line 8
    :cond_2
    new-instance v0, Lb/a/a/k1/c$a;

    invoke-direct {v0, p1}, Lb/a/a/k1/c$a;-><init>(Landroid/preference/Preference;)V

    throw v0
.end method

.method public onCreateComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/k1/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/preferences/PreferenceController;

    .line 2
    invoke-interface {v1}, Lcom/android/quicksearchbox/preferences/PreferenceController;->onCreateComplete()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/k1/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/preferences/PreferenceController;

    .line 2
    invoke-interface {v1}, Lcom/android/quicksearchbox/preferences/PreferenceController;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/k1/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/preferences/PreferenceController;

    .line 2
    invoke-interface {v1}, Lcom/android/quicksearchbox/preferences/PreferenceController;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/k1/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/preferences/PreferenceController;

    .line 2
    invoke-interface {v1}, Lcom/android/quicksearchbox/preferences/PreferenceController;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method
