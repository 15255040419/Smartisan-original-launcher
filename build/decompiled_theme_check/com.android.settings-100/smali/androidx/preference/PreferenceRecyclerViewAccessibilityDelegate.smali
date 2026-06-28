.class public Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;
.super Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
.source "PreferenceRecyclerViewAccessibilityDelegate.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final mDefaultItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field final mItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 48
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;->mDefaultItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 60
    new-instance v0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate$1;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate$1;-><init>(Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;)V

    iput-object v0, p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;->mItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 52
    iput-object p1, p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;
    .locals 0

    .line 58
    iget-object p0, p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;->mItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    return-object p0
.end method
