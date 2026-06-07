.class public final Lb/a/a/t;
.super Ljava/lang/Object;
.source "FuzzyTone.java"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.quicksearchbox.fuzzytone/fuzzy_tones"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lb/a/a/t;->a:Landroid/net/Uri;

    const-string v0, "content://com.android.quicksearchbox.fuzzytone/fuzzy_tone"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lb/a/a/t;->b:Landroid/net/Uri;

    return-void
.end method
