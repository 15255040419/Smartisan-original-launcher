.class public final Landroid/support/v4/database/CursorWindowCompat;
.super Ljava/lang/Object;
.source "CursorWindowCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;J)Landroid/database/CursorWindow;
    .locals 0

    .line 1
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastP()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Landroid/database/CursorWindow;

    invoke-direct {p0, p1, p2, p3}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;J)V

    return-object p0

    .line 3
    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xf

    if-lt p0, p2, :cond_1

    .line 4
    new-instance p0, Landroid/database/CursorWindow;

    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 5
    :cond_1
    new-instance p0, Landroid/database/CursorWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Z)V

    return-object p0
.end method
