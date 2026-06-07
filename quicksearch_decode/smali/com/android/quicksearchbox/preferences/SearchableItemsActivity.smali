.class public Lcom/android/quicksearchbox/preferences/SearchableItemsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SearchableItemsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f130003

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    return-void
.end method
