.class public Lb/a/a/k1/b;
.super Ljava/lang/Object;
.source "ClearShortcutsController.java"

# interfaces
.implements Lcom/android/quicksearchbox/preferences/PreferenceController;


# instance fields
.field public final a:Lcom/android/quicksearchbox/ShortcutRepository;

.field public final b:Landroid/os/Handler;

.field public c:Lcom/android/quicksearchbox/preferences/OkCancelPreference;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ShortcutRepository;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lb/a/a/k1/b;->b:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lb/a/a/k1/b;->a:Lcom/android/quicksearchbox/ShortcutRepository;

    return-void
.end method

.method public static synthetic a(Lb/a/a/k1/b;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/a/a/k1/b;->a()V

    return-void
.end method

.method public static synthetic b(Lb/a/a/k1/b;)Lcom/android/quicksearchbox/preferences/OkCancelPreference;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/k1/b;->c:Lcom/android/quicksearchbox/preferences/OkCancelPreference;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "QSB.CSC"

    const-string v1, "Clearing shortcuts..."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lb/a/a/k1/b;->a:Lcom/android/quicksearchbox/ShortcutRepository;

    invoke-interface {v0}, Lcom/android/quicksearchbox/ShortcutRepository;->clearHistory()V

    .line 4
    iget-object v0, p0, Lb/a/a/k1/b;->c:Lcom/android/quicksearchbox/preferences/OkCancelPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/DialogPreference;->setEnabled(Z)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lb/a/a/k1/b;->a:Lcom/android/quicksearchbox/ShortcutRepository;

    iget-object v1, p0, Lb/a/a/k1/b;->b:Landroid/os/Handler;

    new-instance v2, Lb/a/a/k1/b$b;

    invoke-direct {v2, p0}, Lb/a/a/k1/b$b;-><init>(Lb/a/a/k1/b;)V

    invoke-static {v1, v2}, Lb/a/a/n1/k;->a(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;)Lcom/android/quicksearchbox/util/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/ShortcutRepository;->hasHistory(Lcom/android/quicksearchbox/util/Consumer;)V

    return-void
.end method

.method public handlePreference(Landroid/preference/Preference;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/quicksearchbox/preferences/OkCancelPreference;

    iput-object p1, p0, Lb/a/a/k1/b;->c:Lcom/android/quicksearchbox/preferences/OkCancelPreference;

    .line 2
    iget-object p1, p0, Lb/a/a/k1/b;->c:Lcom/android/quicksearchbox/preferences/OkCancelPreference;

    new-instance v0, Lb/a/a/k1/b$a;

    invoke-direct {v0, p0}, Lb/a/a/k1/b$a;-><init>(Lb/a/a/k1/b;)V

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/preferences/OkCancelPreference;->a(Lcom/android/quicksearchbox/preferences/OkCancelPreference$Listener;)V

    return-void
.end method

.method public onCreateComplete()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/a/a/k1/b;->b()V

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
