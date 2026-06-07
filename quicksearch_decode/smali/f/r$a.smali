.class public Lf/r$a;
.super Lg/a;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/r;-><init>(Lf/p;Lf/s;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Lf/r;


# direct methods
.method public constructor <init>(Lf/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/r$a;->k:Lf/r;

    invoke-direct {p0}, Lg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/r$a;->k:Lf/r;

    invoke-virtual {v0}, Lf/r;->cancel()V

    return-void
.end method
