.class public final synthetic Lb/a/a/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/android/quicksearchbox/SearchActivity;

.field private final synthetic b:Landroid/content/Intent;

.field private final synthetic c:Landroid/app/ActivityOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quicksearchbox/SearchActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/a;->a:Lcom/android/quicksearchbox/SearchActivity;

    iput-object p2, p0, Lb/a/a/a;->b:Landroid/content/Intent;

    iput-object p3, p0, Lb/a/a/a;->c:Landroid/app/ActivityOptions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lb/a/a/a;->a:Lcom/android/quicksearchbox/SearchActivity;

    iget-object v1, p0, Lb/a/a/a;->b:Landroid/content/Intent;

    iget-object v2, p0, Lb/a/a/a;->c:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v2}, Lcom/android/quicksearchbox/SearchActivity;->a(Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    return-void
.end method
