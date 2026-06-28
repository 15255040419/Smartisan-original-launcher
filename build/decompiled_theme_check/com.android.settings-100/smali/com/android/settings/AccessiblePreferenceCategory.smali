.class public Lcom/android/settings/AccessiblePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "AccessiblePreferenceCategory.java"


# instance fields
.field private mContentDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    .line 41
    iget-object p0, p0, Lcom/android/settings/AccessiblePreferenceCategory;->mContentDescription:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/settings/AccessiblePreferenceCategory;->mContentDescription:Ljava/lang/String;

    return-void
.end method
