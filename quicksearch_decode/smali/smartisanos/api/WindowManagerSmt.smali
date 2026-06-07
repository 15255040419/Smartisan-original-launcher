.class public Lsmartisanos/api/WindowManagerSmt;
.super Ljava/lang/Object;
.source "WindowManagerSmt.java"


# static fields
.field private static final sInstance:Lsmartisanos/api/WindowManagerSmt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsmartisanos/api/WindowManagerSmt;

    invoke-direct {v0}, Lsmartisanos/api/WindowManagerSmt;-><init>()V

    sput-object v0, Lsmartisanos/api/WindowManagerSmt;->sInstance:Lsmartisanos/api/WindowManagerSmt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lsmartisanos/api/WindowManagerSmt;
    .locals 1

    sget-object v0, Lsmartisanos/api/WindowManagerSmt;->sInstance:Lsmartisanos/api/WindowManagerSmt;

    return-object v0
.end method

.method public static setSystemUiDecoration(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;IIII)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public isWindowInthumbMode(Landroid/view/WindowManager;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resetWindowOneHandedState(Landroid/view/WindowManager;)V
    .locals 0

    return-void
.end method
