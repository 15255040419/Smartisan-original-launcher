.class public final Landroidx/preference/PreferenceScreen;
.super Landroidx/preference/PreferenceGroup;
.source "PreferenceScreen.java"


# instance fields
.field private mShouldUseGeneratedIds:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 53
    sget v0, Landroidx/preference/R$attr;->preferenceScreenStyle:I

    const v1, 0x101008b

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Landroidx/preference/PreferenceScreen;->mShouldUseGeneratedIds:Z

    return-void
.end method


# virtual methods
.method protected isOnSameScreenAsChildren()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onClick()V
    .locals 1

    .line 59
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getOnNavigateToScreenListener()Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    invoke-interface {v0, p0}, Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;->onNavigateToScreen(Landroidx/preference/PreferenceScreen;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShouldUseGeneratedIds(Z)V
    .locals 1

    .line 100
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iput-boolean p1, p0, Landroidx/preference/PreferenceScreen;->mShouldUseGeneratedIds:Z

    return-void

    .line 101
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot change the usage of generated IDs while attached to the preference hierarchy"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shouldUseGeneratedIds()Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Landroidx/preference/PreferenceScreen;->mShouldUseGeneratedIds:Z

    return p0
.end method
