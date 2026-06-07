.class public La/a/e/h/i$a;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroidx/core/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/e/h/i;->setSupportActionProvider(Landroidx/core/view/ActionProvider;)Landroidx/core/internal/view/SupportMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/e/h/i;


# direct methods
.method public constructor <init>(La/a/e/h/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/e/h/i$a;->a:La/a/e/h/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, La/a/e/h/i$a;->a:La/a/e/h/i;

    iget-object v0, p1, La/a/e/h/i;->n:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->d(La/a/e/h/i;)V

    return-void
.end method
