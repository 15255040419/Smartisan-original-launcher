.class public Lb/a/a/y0$b;
.super Landroid/database/DataSetObserver;
.source "Suggestions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/y0;


# direct methods
.method public constructor <init>(Lb/a/a/y0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/y0$b;->a:Lb/a/a/y0;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lb/a/a/y0;Lb/a/a/y0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb/a/a/y0$b;-><init>(Lb/a/a/y0;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/y0$b;->a:Lb/a/a/y0;

    invoke-virtual {v0}, Lb/a/a/y0;->o()V

    return-void
.end method
