.class public Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$a;
.super Ljava/lang/Object;
.source "FuzzyToneSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->f()V
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
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$a;->a:Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$a;->a:Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/BaseActivity;->finish()V

    return-void
.end method
