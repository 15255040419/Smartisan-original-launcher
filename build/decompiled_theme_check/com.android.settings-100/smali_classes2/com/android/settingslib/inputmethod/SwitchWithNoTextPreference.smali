.class public Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;
.super Landroidx/preference/SwitchPreference;
.source "SwitchWithNoTextPreference.java"


# static fields
.field private static final EMPTY_TEXT:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    return-void
.end method
