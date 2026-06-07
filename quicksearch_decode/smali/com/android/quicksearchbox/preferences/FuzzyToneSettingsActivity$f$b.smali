.class public Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$b;
.super Ljava/lang/Object;
.source "FuzzyToneSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$b;->b:Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$b;->a:I

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$b;->b:Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;

    invoke-static {p1}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->b(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$b;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$e;

    .line 2
    iget-boolean v0, p1, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$e;->d:Z

    if-eq v0, p2, :cond_0

    .line 3
    iput-boolean p2, p1, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$e;->d:Z

    .line 4
    iget-object p2, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$b;->b:Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;

    iget-wide v0, p1, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$e;->a:J

    iget-boolean p1, p1, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$e;->d:Z

    invoke-static {p2, v0, v1, p1}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->a(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;JZ)V

    :cond_0
    return-void
.end method
