.class public La/c/a/a;
.super La/c/a/c;
.source "CardViewApi17Impl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, La/c/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public initStatic()V
    .locals 1

    .line 1
    new-instance v0, La/c/a/a$a;

    invoke-direct {v0, p0}, La/c/a/a$a;-><init>(La/c/a/a;)V

    sput-object v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->r:Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    return-void
.end method
