.class public Lcom/android/quicksearchbox/preferences/OkCancelPreference;
.super Landroid/preference/DialogPreference;
.source "OkCancelPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/preferences/OkCancelPreference$Listener;
    }
.end annotation


# instance fields
.field public a:Lcom/android/quicksearchbox/preferences/OkCancelPreference$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/quicksearchbox/preferences/OkCancelPreference$Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/OkCancelPreference;->a:Lcom/android/quicksearchbox/preferences/OkCancelPreference$Listener;

    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/OkCancelPreference;->a:Lcom/android/quicksearchbox/preferences/OkCancelPreference$Listener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/preferences/OkCancelPreference$Listener;->onDialogClosed(Z)V

    :cond_0
    return-void
.end method
