.class Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "PreferenceFragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollToPreferenceObserver"
.end annotation


# instance fields
.field private final mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private final mKey:Ljava/lang/String;

.field private final mList:Landroidx/recyclerview/widget/RecyclerView;

.field private final mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 729
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 730
    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 731
    iput-object p2, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 732
    iput-object p3, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mPreference:Landroidx/preference/Preference;

    .line 733
    iput-object p4, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    return-void
.end method

.method private scrollToPreference()V
    .locals 2

    .line 737
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 739
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 740
    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v1, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    .line 741
    invoke-interface {v1, v0}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    move-result v0

    goto :goto_0

    .line 743
    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    .line 744
    invoke-interface {v0, v1}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 747
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 753
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 758
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 763
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 768
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 778
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 773
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    return-void
.end method
