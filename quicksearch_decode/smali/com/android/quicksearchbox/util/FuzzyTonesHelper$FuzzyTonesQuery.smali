.class public interface abstract Lcom/android/quicksearchbox/util/FuzzyTonesHelper$FuzzyTonesQuery;
.super Ljava/lang/Object;
.source "FuzzyTonesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/util/FuzzyTonesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FuzzyTonesQuery"
.end annotation


# static fields
.field public static final TONE_1:I = 0x0

.field public static final TONE_2:I = 0x1

.field public static final _PROJECTION:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "tone_1"

    const-string v1, "tone_2"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper$FuzzyTonesQuery;->_PROJECTION:[Ljava/lang/String;

    return-void
.end method
