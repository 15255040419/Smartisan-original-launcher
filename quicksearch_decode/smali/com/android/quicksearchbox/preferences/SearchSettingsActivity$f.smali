.class public Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$f;
.super Ljava/lang/Object;
.source "SearchSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$f;->a:Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$f;->a:Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "search_history"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    xor-int/lit8 p1, p2, 0x1

    const-string p2, "A170084"

    const-string v0, "search_history_switch"

    .line 2
    invoke-static {p2, v0, p1}, Lb/a/a/n1/d$t;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
