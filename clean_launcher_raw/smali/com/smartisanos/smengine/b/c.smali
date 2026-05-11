.class public Lcom/smartisanos/smengine/b/c;
.super Ljava/lang/Object;
.source "EmitterPointShape.java"

# interfaces
.implements Lcom/smartisanos/smengine/b/d;


# instance fields
.field private PW:Lcom/smartisanos/smengine/a/j;


# direct methods
.method public constructor <init>(Lcom/smartisanos/smengine/a/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/smengine/b/c;->PW:Lcom/smartisanos/smengine/a/j;

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/a/j;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/b/c;->PW:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    return-void
.end method
