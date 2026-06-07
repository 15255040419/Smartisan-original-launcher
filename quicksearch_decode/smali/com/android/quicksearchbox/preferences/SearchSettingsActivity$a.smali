.class public Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$a;
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
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$a;->a:Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$a;->a:Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/BaseActivity;->finish()V

    return-void
.end method
