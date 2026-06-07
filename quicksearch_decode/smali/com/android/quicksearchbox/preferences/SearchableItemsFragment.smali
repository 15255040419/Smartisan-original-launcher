.class public Lcom/android/quicksearchbox/preferences/SearchableItemsFragment;
.super Lb/a/a/k1/e;
.source "SearchableItemsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/a/k1/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/preference/PreferenceGroup;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a/a/k1/e;->b()Lcom/android/quicksearchbox/preferences/PreferenceController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/preferences/PreferenceController;->handlePreference(Landroid/preference/Preference;)V

    return-void
.end method

.method public c()I
    .locals 1

    const v0, 0x7f130004

    return v0
.end method
