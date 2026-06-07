.class public Lcom/android/quicksearchbox/SearchActivity$a;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/PinObserver$OnPinListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$a;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPinChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$a;->a:Lcom/android/quicksearchbox/SearchActivity;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/android/quicksearchbox/SearchActivity;->b(Lcom/android/quicksearchbox/SearchActivity;Z)V

    return-void
.end method
