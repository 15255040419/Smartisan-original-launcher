.class public Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$b;
.super Ljava/lang/Object;
.source "FuzzyToneSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$b;->a:Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$b;->a:Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;

    invoke-static {p1, p2}, Lb/a/a/n1/h0;->a(Landroid/content/Context;Z)V

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$b;->a:Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;

    invoke-static {p1}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->a(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;)V

    if-eqz p2, :cond_0

    const-string p1, "0"

    goto :goto_0

    :cond_0
    const-string p1, "1"

    :goto_0
    const-string p2, "A170070"

    const-string v0, "fuzzy_syllables_main_switch"

    .line 3
    invoke-static {p2, v0, p1}, Lb/a/a/n1/d$t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
