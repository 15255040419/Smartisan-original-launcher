.class public Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$a;
.super Ljava/lang/Object;
.source "FuzzyToneSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->a(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Z

.field public final synthetic c:Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;JZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$a;->c:Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;

    iput-wide p2, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$a;->a:J

    iput-boolean p4, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget-object v0, Lb/a/a/t;->b:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$a;->a:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3
    iget-boolean v2, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$a;->b:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "selected"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    iget-object v2, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$a;->c:Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;

    invoke-static {v2}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->a(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
