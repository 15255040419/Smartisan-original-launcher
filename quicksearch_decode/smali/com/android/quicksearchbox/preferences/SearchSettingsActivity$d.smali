.class public Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$d;
.super Ljava/lang/Object;
.source "SearchSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$d;->a:Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$d;->a:Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;

    const-class v1, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$d;->a:Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
