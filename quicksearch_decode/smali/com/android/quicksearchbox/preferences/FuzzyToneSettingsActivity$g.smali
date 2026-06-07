.class public final Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$g;
.super Ljava/lang/Object;
.source "FuzzyToneSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "_id"

    const-string v1, "tone_1"

    const-string v2, "tone_2"

    const-string v3, "selected"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$g;->a:[Ljava/lang/String;

    return-void
.end method
