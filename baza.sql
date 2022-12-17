USE [Прокат]
GO
/****** Object:  Table [dbo].[Движения заказов]    Script Date: 18.11.2022 13:37:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Движения заказов](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Заказ] [int] NOT NULL,
	[Дата] [date] NOT NULL,
	[Время] [time](7) NOT NULL,
	[Статус] [int] NOT NULL,
 CONSTRAINT [PK_Движения заказов] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Должности]    Script Date: 18.11.2022 13:37:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Должности](
	[Код] [int] NOT NULL,
	[Наименование] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Должности] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заказы]    Script Date: 18.11.2022 13:37:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заказы](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Код заказа] [nvarchar](50) NOT NULL,
	[Клиент] [int] NOT NULL,
	[Время проката (часов)] [int] NOT NULL,
 CONSTRAINT [PK_Заказы] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[История входов]    Script Date: 18.11.2022 13:37:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[История входов](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Пользователь] [int] NOT NULL,
	[Дата] [date] NOT NULL,
	[Время] [time](7) NOT NULL,
	[Тип] [int] NOT NULL,
 CONSTRAINT [PK_История входов] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Клиенты]    Script Date: 18.11.2022 13:37:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Клиенты](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NOT NULL,
	[Серия паспорта] [nvarchar](4) NOT NULL,
	[Номер паспорта] [nvarchar](6) NOT NULL,
	[Дата рождения] [datetime] NOT NULL,
	[Адрес] [nvarchar](100) NOT NULL,
	[Электронная почта] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Клиенты] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Оборудование]    Script Date: 18.11.2022 13:37:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Оборудование](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Код оборудования] [nvarchar](50) NOT NULL,
	[Тип] [int] NOT NULL,
 CONSTRAINT [PK_Оборудование] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Пользователи]    Script Date: 18.11.2022 13:37:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пользователи](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Сотрудник] [int] NOT NULL,
	[Логин] [nvarchar](50) NOT NULL,
	[Пароль] [nvarchar](50) NOT NULL,
	[Фото] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_Пользователи] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Предоставление услуг]    Script Date: 18.11.2022 13:37:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Предоставление услуг](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Заказ] [int] NOT NULL,
	[Услуга] [int] NOT NULL,
 CONSTRAINT [PK_Предоставление услуг] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Прокат оборудования]    Script Date: 18.11.2022 13:37:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Прокат оборудования](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Заказ] [int] NOT NULL,
	[Оборудование] [int] NOT NULL,
	[Статус] [int] NULL,
 CONSTRAINT [PK_Прокат оборудования] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Сотрудники]    Script Date: 18.11.2022 13:37:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Сотрудники](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NOT NULL,
	[Должность] [int] NOT NULL,
 CONSTRAINT [PK_Сотрудники] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Статусы заказов]    Script Date: 18.11.2022 13:37:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Статусы заказов](
	[Код] [int] NOT NULL,
	[Наименование] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Статусы заказов] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Статусы проката]    Script Date: 18.11.2022 13:37:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Статусы проката](
	[Код] [int] NOT NULL,
	[Наименование] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Статусы проката] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Типы входов]    Script Date: 18.11.2022 13:37:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Типы входов](
	[Код] [int] NOT NULL,
	[Наименование] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Типы входов] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Типы оборудования]    Script Date: 18.11.2022 13:37:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Типы оборудования](
	[Код] [int] NOT NULL,
	[Наименование] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Типы оборудования] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Типы услуг]    Script Date: 18.11.2022 13:37:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Типы услуг](
	[Код] [int] NOT NULL,
	[Наименование] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Типы услуг] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Услуги]    Script Date: 18.11.2022 13:37:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Услуги](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Код услуги] [nvarchar](50) NOT NULL,
	[Наименование] [nvarchar](50) NOT NULL,
	[Стоимость (рублей за час)] [int] NOT NULL,
	[Тип] [int] NOT NULL,
 CONSTRAINT [PK_Услуги] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Движения заказов] ON 

INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (1, 1, CAST(N'2022-03-12' AS Date), CAST(N'09:10:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (2, 2, CAST(N'2022-03-13' AS Date), CAST(N'10:10:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (3, 3, CAST(N'2022-03-14' AS Date), CAST(N'11:10:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (4, 4, CAST(N'2022-03-15' AS Date), CAST(N'12:10:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (5, 5, CAST(N'2022-03-16' AS Date), CAST(N'13:10:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (6, 6, CAST(N'2022-03-17' AS Date), CAST(N'14:10:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (7, 7, CAST(N'2022-03-18' AS Date), CAST(N'15:10:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (8, 8, CAST(N'2022-03-19' AS Date), CAST(N'16:10:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (9, 9, CAST(N'2022-03-20' AS Date), CAST(N'10:00:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (10, 10, CAST(N'2022-03-21' AS Date), CAST(N'11:00:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (11, 11, CAST(N'2022-03-22' AS Date), CAST(N'12:00:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (12, 12, CAST(N'2022-03-23' AS Date), CAST(N'13:00:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (13, 13, CAST(N'2022-03-24' AS Date), CAST(N'14:00:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (14, 14, CAST(N'2022-03-25' AS Date), CAST(N'15:00:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (15, 15, CAST(N'2022-03-26' AS Date), CAST(N'16:00:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (16, 16, CAST(N'2022-03-27' AS Date), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (17, 17, CAST(N'2022-03-28' AS Date), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (18, 18, CAST(N'2022-03-29' AS Date), CAST(N'19:00:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (19, 19, CAST(N'2022-03-30' AS Date), CAST(N'12:30:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (20, 20, CAST(N'2022-03-31' AS Date), CAST(N'13:30:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (21, 21, CAST(N'2022-04-01' AS Date), CAST(N'14:30:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (22, 22, CAST(N'2022-04-02' AS Date), CAST(N'15:30:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (23, 23, CAST(N'2022-04-03' AS Date), CAST(N'16:30:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (24, 24, CAST(N'2022-04-04' AS Date), CAST(N'17:30:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (25, 25, CAST(N'2022-04-05' AS Date), CAST(N'18:30:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (26, 26, CAST(N'2022-04-06' AS Date), CAST(N'15:30:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (27, 27, CAST(N'2022-04-07' AS Date), CAST(N'16:30:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (28, 28, CAST(N'2022-04-08' AS Date), CAST(N'17:30:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (29, 29, CAST(N'2022-04-09' AS Date), CAST(N'18:30:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (30, 30, CAST(N'2022-04-10' AS Date), CAST(N'19:30:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (31, 31, CAST(N'2022-04-11' AS Date), CAST(N'10:30:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (32, 32, CAST(N'2022-04-12' AS Date), CAST(N'11:30:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (33, 33, CAST(N'2022-04-13' AS Date), CAST(N'12:30:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (34, 34, CAST(N'2022-04-14' AS Date), CAST(N'13:30:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (35, 35, CAST(N'2022-04-15' AS Date), CAST(N'14:30:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (36, 36, CAST(N'2022-04-02' AS Date), CAST(N'15:30:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (37, 37, CAST(N'2022-04-03' AS Date), CAST(N'16:30:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (38, 38, CAST(N'2022-04-04' AS Date), CAST(N'17:30:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (39, 39, CAST(N'2022-04-05' AS Date), CAST(N'10:15:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (40, 40, CAST(N'2022-04-06' AS Date), CAST(N'11:15:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (41, 41, CAST(N'2022-04-07' AS Date), CAST(N'12:15:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (42, 42, CAST(N'2022-04-08' AS Date), CAST(N'13:15:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (43, 43, CAST(N'2022-04-09' AS Date), CAST(N'14:15:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (44, 44, CAST(N'2022-04-01' AS Date), CAST(N'15:15:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (45, 45, CAST(N'2022-04-02' AS Date), CAST(N'16:15:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (46, 46, CAST(N'2022-04-03' AS Date), CAST(N'10:45:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (47, 47, CAST(N'2022-04-04' AS Date), CAST(N'11:45:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (48, 48, CAST(N'2022-04-05' AS Date), CAST(N'12:45:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (49, 49, CAST(N'2022-04-06' AS Date), CAST(N'13:45:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (50, 50, CAST(N'2022-04-07' AS Date), CAST(N'14:45:00' AS Time), 1)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (51, 2, CAST(N'2022-03-13' AS Date), CAST(N'10:10:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (52, 3, CAST(N'2022-03-14' AS Date), CAST(N'11:10:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (53, 8, CAST(N'2022-03-19' AS Date), CAST(N'16:10:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (54, 9, CAST(N'2022-03-20' AS Date), CAST(N'10:00:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (55, 12, CAST(N'2022-03-23' AS Date), CAST(N'13:00:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (56, 13, CAST(N'2022-03-24' AS Date), CAST(N'14:00:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (57, 14, CAST(N'2022-03-25' AS Date), CAST(N'15:00:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (58, 17, CAST(N'2022-03-28' AS Date), CAST(N'18:00:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (59, 18, CAST(N'2022-03-29' AS Date), CAST(N'19:00:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (60, 24, CAST(N'2022-04-04' AS Date), CAST(N'17:30:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (61, 25, CAST(N'2022-04-05' AS Date), CAST(N'18:30:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (62, 26, CAST(N'2022-04-06' AS Date), CAST(N'15:30:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (63, 27, CAST(N'2022-04-07' AS Date), CAST(N'16:30:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (64, 30, CAST(N'2022-04-10' AS Date), CAST(N'19:30:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (65, 31, CAST(N'2022-04-11' AS Date), CAST(N'10:30:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (66, 35, CAST(N'2022-04-15' AS Date), CAST(N'14:30:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (67, 36, CAST(N'2022-04-02' AS Date), CAST(N'15:30:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (68, 37, CAST(N'2022-04-03' AS Date), CAST(N'16:30:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (69, 39, CAST(N'2022-04-05' AS Date), CAST(N'10:15:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (70, 42, CAST(N'2022-04-08' AS Date), CAST(N'13:15:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (71, 43, CAST(N'2022-04-09' AS Date), CAST(N'14:15:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (72, 44, CAST(N'2022-04-01' AS Date), CAST(N'15:15:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (73, 45, CAST(N'2022-04-02' AS Date), CAST(N'16:15:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (74, 46, CAST(N'2022-04-03' AS Date), CAST(N'10:45:00' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (75, 5, CAST(N'2022-04-16' AS Date), CAST(N'13:10:00' AS Time), 3)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (76, 11, CAST(N'2022-03-22' AS Date), CAST(N'12:00:00' AS Time), 3)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (77, 15, CAST(N'2022-04-26' AS Date), CAST(N'16:00:00' AS Time), 3)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (78, 21, CAST(N'2022-04-01' AS Date), CAST(N'14:30:00' AS Time), 3)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (79, 28, CAST(N'2022-04-08' AS Date), CAST(N'17:30:00' AS Time), 3)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (80, 38, CAST(N'2022-04-04' AS Date), CAST(N'17:30:00' AS Time), 3)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (81, 41, CAST(N'2022-04-07' AS Date), CAST(N'12:15:00' AS Time), 3)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (82, 47, CAST(N'2022-04-04' AS Date), CAST(N'11:45:00' AS Time), 3)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (83, 5, CAST(N'2022-11-18' AS Date), CAST(N'12:18:37.4086432' AS Time), 2)
INSERT [dbo].[Движения заказов] ([Код], [Заказ], [Дата], [Время], [Статус]) VALUES (84, 5, CAST(N'2022-11-18' AS Date), CAST(N'12:19:41.9209335' AS Time), 3)
SET IDENTITY_INSERT [dbo].[Движения заказов] OFF
GO
INSERT [dbo].[Должности] ([Код], [Наименование]) VALUES (1, N'Администратор')
INSERT [dbo].[Должности] ([Код], [Наименование]) VALUES (2, N'Старший смены')
INSERT [dbo].[Должности] ([Код], [Наименование]) VALUES (3, N'Продавец')
GO
SET IDENTITY_INSERT [dbo].[Заказы] ON 

INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (1, N'45462526/12.03.2022', 45462526, 2)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (2, N'45462527/13.03.2022', 45462527, 10)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (3, N'45462528/14.03.2022', 45462528, 2)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (4, N'45462529/15.03.2022', 45462529, 10)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (5, N'45462530/16.03.2022', 45462530, 6)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (6, N'45462531/17.03.2022', 45462531, 8)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (7, N'45462532/18.03.2022', 45462532, 4)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (8, N'45462533/19.03.2022', 45462533, 6)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (9, N'45462534/20.03.2022', 45462534, 12)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (10, N'45462535/21.03.2022', 45462535, 2)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (11, N'45462536/22.03.2022', 45462536, 10)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (12, N'45462537/23.03.2022', 45462537, 2)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (13, N'45462538/24.03.2022', 45462538, 10)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (14, N'45462539/25.03.2022', 45462539, 6)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (15, N'45462540/26.03.2022', 45462540, 8)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (16, N'45462541/27.03.2022', 45462541, 4)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (17, N'45462542/28.03.2022', 45462542, 6)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (18, N'45462543/29.03.2022', 45462543, 12)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (19, N'45462544/30.03.2022', 45462544, 2)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (20, N'45462545/31.03.2022', 45462545, 10)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (21, N'45462546/01.04.2022', 45462546, 2)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (22, N'45462547/02.04.2022', 45462547, 10)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (23, N'45462548/03.04.2022', 45462548, 6)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (24, N'45462549/04.04.2022', 45462549, 8)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (25, N'45462550/05.04.2022', 45462550, 4)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (26, N'45462551/06.04.2022', 45462551, 6)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (27, N'45462552/07.04.2022', 45462552, 12)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (28, N'45462553/08.04.2022', 45462553, 2)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (29, N'45462554/09.04.2022', 45462554, 10)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (30, N'45462555/10.04.2022', 45462555, 2)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (31, N'45462556/11.04.2022', 45462556, 10)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (32, N'45462557/12.04.2022', 45462557, 6)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (33, N'45462558/13.04.2022', 45462558, 8)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (34, N'45462559/14.04.2022', 45462559, 4)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (35, N'45462560/15.04.2022', 45462560, 6)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (36, N'45462561/02.04.2022', 45462561, 12)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (37, N'45462562/03.04.2022', 45462562, 2)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (38, N'45462563/04.04.2022', 45462563, 10)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (39, N'45462564/05.04.2022', 45462564, 2)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (40, N'45462565/06.04.2022', 45462565, 10)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (41, N'45462566/07.04.2022', 45462566, 6)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (42, N'45462567/08.04.2022', 45462567, 8)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (43, N'45462568/09.04.2022', 45462568, 4)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (44, N'45462569/01.04.2022', 45462569, 6)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (45, N'45462570/02.04.2022', 45462570, 12)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (46, N'45462571/03.04.2022', 45462571, 8)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (47, N'45462572/04.04.2022', 45462572, 6)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (48, N'45462573/05.04.2022', 45462573, 8)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (49, N'45462574/06.04.2022', 45462574, 4)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (50, N'45462575/07.04.2022', 45462575, 6)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (53, N'dsadsa', 45462575, 5)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (54, N'dsadsa7795', 45462529, 4)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (55, N'dsadsa88', 45462596, 3)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (56, N'qwerty123', 45462595, 3)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (57, N'qwerty1236760', 45462532, 2)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (58, N'gfhf6787', 45462597, 5)
INSERT [dbo].[Заказы] ([Код], [Код заказа], [Клиент], [Время проката (часов)]) VALUES (59, N'opop98', 45462530, 2)
SET IDENTITY_INSERT [dbo].[Заказы] OFF
GO
SET IDENTITY_INSERT [dbo].[История входов] ON 

INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (1, 1, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (2, 2, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (3, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (4, 4, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (5, 5, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 2)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (6, 6, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (7, 7, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (8, 8, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 2)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (9, 9, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (10, 10, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (11, 1, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 2)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (12, 1, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 2)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (13, 1, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 2)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (14, 1, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (15, 2, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 2)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (16, 2, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 2)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (17, 2, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (18, 1, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (19, 1, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (20, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (21, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (22, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (23, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (24, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (25, 4, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (26, 1, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (27, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (28, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (29, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (30, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (31, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (32, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (33, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 2)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (34, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 2)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (35, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (36, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (37, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (38, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (39, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (40, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (41, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (42, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (43, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (44, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (45, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (46, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (47, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (48, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (49, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (50, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (51, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (52, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (53, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (54, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (57, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (58, 3, CAST(N'2022-11-13' AS Date), CAST(N'19:55:09.7433330' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (59, 1, CAST(N'2022-11-15' AS Date), CAST(N'15:55:58.9903594' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (60, 3, CAST(N'2022-11-15' AS Date), CAST(N'20:19:21.1995160' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (61, 4, CAST(N'2022-11-15' AS Date), CAST(N'20:21:04.0716767' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (62, 3, CAST(N'2022-11-15' AS Date), CAST(N'20:27:13.2692673' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (63, 1, CAST(N'2022-11-15' AS Date), CAST(N'20:32:14.1683224' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (64, 2, CAST(N'2022-11-15' AS Date), CAST(N'20:37:15.4304827' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (65, 2, CAST(N'2022-11-15' AS Date), CAST(N'20:38:11.7462146' AS Time), 2)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (66, 10, CAST(N'2022-11-15' AS Date), CAST(N'20:39:33.6488304' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (67, 1, CAST(N'2022-11-15' AS Date), CAST(N'20:48:46.8011092' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (68, 3, CAST(N'2022-11-15' AS Date), CAST(N'21:10:07.9509149' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (69, 1, CAST(N'2022-11-16' AS Date), CAST(N'19:09:20.6138403' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (70, 4, CAST(N'2022-11-16' AS Date), CAST(N'19:13:56.9553833' AS Time), 2)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (71, 4, CAST(N'2022-11-16' AS Date), CAST(N'19:14:03.8947880' AS Time), 2)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (72, 4, CAST(N'2022-11-16' AS Date), CAST(N'19:14:18.0620537' AS Time), 2)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (73, 4, CAST(N'2022-11-16' AS Date), CAST(N'19:14:31.1171075' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (74, 4, CAST(N'2022-11-16' AS Date), CAST(N'19:15:02.0855614' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (75, 4, CAST(N'2022-11-16' AS Date), CAST(N'19:16:04.2436587' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (76, 3, CAST(N'2022-11-16' AS Date), CAST(N'19:17:07.9786634' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (77, 3, CAST(N'2022-11-16' AS Date), CAST(N'19:26:42.8049185' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (78, 1, CAST(N'2022-11-16' AS Date), CAST(N'19:52:31.5183732' AS Time), 2)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (79, 1, CAST(N'2022-11-16' AS Date), CAST(N'19:52:33.3998700' AS Time), 2)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (80, 1, CAST(N'2022-11-16' AS Date), CAST(N'19:53:03.8943513' AS Time), 2)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (81, 2, CAST(N'2022-11-16' AS Date), CAST(N'19:56:15.2560907' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (82, 2, CAST(N'2022-11-16' AS Date), CAST(N'19:57:04.1922739' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (83, 2, CAST(N'2022-11-16' AS Date), CAST(N'19:57:36.9688705' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (84, 1, CAST(N'2022-11-18' AS Date), CAST(N'12:18:05.6909733' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (85, 4, CAST(N'2022-11-18' AS Date), CAST(N'12:19:28.8782729' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (86, 3, CAST(N'2022-11-18' AS Date), CAST(N'12:20:10.9436816' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (87, 1, CAST(N'2022-11-18' AS Date), CAST(N'13:20:02.7240444' AS Time), 1)
INSERT [dbo].[История входов] ([Код], [Пользователь], [Дата], [Время], [Тип]) VALUES (88, 1, CAST(N'2022-11-18' AS Date), CAST(N'13:26:26.4605974' AS Time), 1)
SET IDENTITY_INSERT [dbo].[История входов] OFF
GO
SET IDENTITY_INSERT [dbo].[Клиенты] ON 

INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462526, N'Фролов', N'Андрей', N'Иванович', N'1180', N'176596', CAST(N'2001-07-14T00:00:00.000' AS DateTime), N'344288, г. Екатеринбург, ул. Чехова, 1, кв. 34', N'gohufreilagrau-3818@yopmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462527, N'Николаев', N'Даниил', N'Всеволодович', N'2280', N'223523', CAST(N'2001-02-10T00:00:00.000' AS DateTime), N'614164, г. Екатеринбург, ул. Степная, 30, кв. 75', N'xawugosune-1385@yopmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462528, N'Снегирев', N'Макар', N'Иванович', N'4560', N'354155', CAST(N'1998-05-21T00:00:00.000' AS DateTime), N'394242, г. Екатеринбург, ул. Коммунистическая, 43, кв. 57', N'satrahuddusei-4458@yopmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462529, N'Иванов', N'Иван', N'Ильич', N'9120', N'554296', CAST(N'1998-10-01T00:00:00.000' AS DateTime), N'660540, г. Екатеринбург, ул. Солнечная, 25, кв. 78', N'boippaxeufrepra-7093@yopmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462530, N'Филиппова', N'Анна', N'Глебовна', N'2367', N'558134', CAST(N'1976-05-31T00:00:00.000' AS DateTime), N'125837, г. Екатеринбург, ул. Шоссейная, 40, кв. 92', N'zapramaxesu-7741@yopmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462531, N'Иванов', N'Михаил', N'Владимирович', N'7101', N'669343', CAST(N'1985-11-04T00:00:00.000' AS DateTime), N'125703, г. Екатеринбург, ул. Партизанская, 49, кв. 84', N'rouzecroummegre-3899@yopmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462532, N'Власов', N'Дмитрий', N'Александрович', N'3455', N'719630', CAST(N'1998-08-17T00:00:00.000' AS DateTime), N'625283, г. Екатеринбург, ул. Победы, 46, кв. 7', N'ziyeuddocrabri-4748@yopmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462533, N'Серова', N'Екатерина', N'Львовна', N'2377', N'871623', CAST(N'1984-10-24T00:00:00.000' AS DateTime), N'614611, г. Екатеринбург, ул. Молодежная, 50, кв. 78', N'ketameissoinnei-1951@yopmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462534, N'Борисова', N'Ирина', N'Ивановна', N'8755', N'921148', CAST(N'1976-10-14T00:00:00.000' AS DateTime), N'454311, г. Екатеринбург, ул. Новая, 19, кв. 78', N'yipraubaponou-5849@yopmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462535, N'Зайцев', N'Никита', N'Артёмович', N'4355', N'104594', CAST(N'1999-10-14T00:00:00.000' AS DateTime), N'660007, г. Екатеринбург, ул. Октябрьская, 19, кв. 42', N'crapedocouca-3572@yopmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462536, N'Медведев', N'Святослав', N'Евгеньевич', N'2791', N'114390', CAST(N'1985-07-13T00:00:00.000' AS DateTime), N'603036, г. Екатеринбург, ул. Садовая, 4, кв. 13', N'ceigoixakaunni-9227@yopmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462537, N'Коротков', N'Кирилл', N'Алексеевич', N'5582', N'126286', CAST(N'1976-05-26T00:00:00.000' AS DateTime), N'450983, г. Екатеринбург, ул. Комсомольская, 26, кв. 60', N'yeimmeiwauzomo-7054@yopmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462538, N'Калашникова', N'Арина', N'Максимовна', N'2978', N'133653', CAST(N'1999-08-13T00:00:00.000' AS DateTime), N'394782, г. Екатеринбург, ул. Чехова, 3, кв. 14', N'poleifenevi-1560@yopmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462539, N'Минина', N'Таисия', N'Кирилловна', N'7512', N'141956', CAST(N'1985-10-13T00:00:00.000' AS DateTime), N'603002, г. Екатеринбург, ул. Дзержинского, 28, кв. 56', N'kauprezofautei-6607@yopmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462540, N'Наумов', N'Серафим', N'Романович', N'5046', N'158433', CAST(N'1999-04-15T00:00:00.000' AS DateTime), N'450558, г. Екатеринбург, ул. Набережная, 30, кв. 71', N'quaffaullelourei-1667@yopmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462541, N'Воробьева', N'Василиса', N'Евгеньевна', N'2460', N'169505', CAST(N'1999-01-13T00:00:00.000' AS DateTime), N'394060, г. Екатеринбург, ул. Фрунзе, 43, кв. 79', N'jsteele@rojas-robinson.net')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462542, N'Калинин', N'Александр', N'Андреевич', N'3412', N'174593', CAST(N'1999-01-07T00:00:00.000' AS DateTime), N'410661, г. Екатеринбург, ул. Школьная, 50, кв. 53', N'vhopkins@lewis-mullen.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462543, N'Кузнецова', N'Милана', N'Владиславовна', N'4950', N'183034', CAST(N'1999-01-24T00:00:00.000' AS DateTime), N'625590, г. Екатеринбург, ул. Коммунистическая, 20, кв. 34', N'nlewis@yahoo.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462544, N'Фирсов', N'Егор', N'Романович', N'5829', N'219464', CAST(N'1993-09-02T00:00:00.000' AS DateTime), N'625683, г. Екатеринбург, ул. 8 Марта, 20, кв. 21', N'garciadavid@mckinney-mcbride.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462545, N'Зимина', N'Агния', N'Александровна', N'6443', N'208059', CAST(N'1998-09-03T00:00:00.000' AS DateTime), N'400562, г. Екатеринбург, ул. Зеленая, 32, кв. 67', N'cbradley@castro.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462546, N'Титов', N'Андрей', N'Глебович', N'7079', N'213265', CAST(N'1985-10-23T00:00:00.000' AS DateTime), N'614510, г. Екатеринбург, ул. Маяковского, 47, кв. 72', N'cuevascatherine@carlson.biz')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462547, N'Орлов', N'Николай', N'Егорович', N'8207', N'522702', CAST(N'1985-07-27T00:00:00.000' AS DateTime), N'410542, г. Екатеринбург, ул. Светлая, 46, кв. 82', N'thomasmoore@wilson-singh.net')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462548, N'Кузнецова', N'Аиша', N'Михайловна', N'9307', N'232158', CAST(N'1998-10-04T00:00:00.000' AS DateTime), N'620839, г. Екатеринбург, ул. Цветочная, 8, кв. 100', N'jessica84@hotmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462549, N'Куликов', N'Никита', N'Георгиевич', N'1357', N'242839', CAST(N'1999-04-23T00:00:00.000' AS DateTime), N'443890, г. Екатеринбург, ул. Коммунистическая, 1, кв. 10', N'jessicapark@hotmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462550, N'Карпова', N'София', N'Егоровна', N'1167', N'256636', CAST(N'1993-10-01T00:00:00.000' AS DateTime), N'603379, г. Екатеринбург, ул. Спортивная, 46, кв. 95', N'ginaritter@schneider-buchanan.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462551, N'Смирнова', N'Дарья', N'Макаровна', N'1768', N'266986', CAST(N'1976-03-22T00:00:00.000' AS DateTime), N'603721, г. Екатеринбург, ул. Гоголя, 41, кв. 57', N'stephen99@yahoo.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462552, N'Абрамова', N'Александра', N'Мироновна', N'1710', N'427875', CAST(N'1999-03-26T00:00:00.000' AS DateTime), N'410172, г. Екатеринбург, ул. Северная, 13, кв. 86', N'lopezlisa@hotmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462553, N'Наумов', N'Руслан', N'Михайлович', N'1806', N'289145', CAST(N'1999-10-11T00:00:00.000' AS DateTime), N'420151, г. Екатеринбург, ул. Вишневая, 32, кв. 81', N'lori17@hotmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462554, N'Бочаров', N'Никита', N'Матвеевич', N'1587', N'291249', CAST(N'1997-06-29T00:00:00.000' AS DateTime), N'125061, г. Екатеринбург, ул. Подгорная, 8, кв. 74', N'campbellkevin@gardner.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462555, N'Соловьев', N'Давид', N'Ильич', N'1647', N'306372', CAST(N'1984-03-06T00:00:00.000' AS DateTime), N'630370, г. Екатеринбург, ул. Шоссейная, 24, кв. 81', N'morganhoward@clark.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462556, N'Васильева', N'Валерия', N'Дмитриевна', N'1742', N'316556', CAST(N'1999-09-30T00:00:00.000' AS DateTime), N'614753, г. Екатеринбург, ул. Полевая, 35, кв. 39', N'carsontamara@gmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462557, N'Макарова', N'Василиса', N'Андреевна', N'1474', N'326347', CAST(N'1999-04-08T00:00:00.000' AS DateTime), N'426030, г. Екатеринбург, ул. Маяковского, 44, кв. 93', N'kevinpatel@gmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462558, N'Алексеев', N'Матвей', N'Викторович', N'1452', N'339539', CAST(N'1998-08-02T00:00:00.000' AS DateTime), N'450375, г. Екатеринбург, ул. Клубная, 44, кв. 80', N'sethbishop@yahoo.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462559, N'Никитина', N'Полина', N'Александровна', N'2077', N'443480', CAST(N'1976-09-19T00:00:00.000' AS DateTime), N'625560, г. Екатеринбург, ул. Некрасова, 12, кв. 66', N'drollins@schultz-soto.net')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462560, N'Окулова', N'Олеся', N'Алексеевна', N'2147', N'357518', CAST(N'1999-04-03T00:00:00.000' AS DateTime), N'630201, г. Екатеринбург, ул. Комсомольская, 17, кв. 25', N'pblack@copeland-winters.org')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462561, N'Захарова', N'Полина', N'Яновна', N'2687', N'363884', CAST(N'1976-04-21T00:00:00.000' AS DateTime), N'190949, г. Екатеринбург, ул. Мичурина, 26, кв. 93', N'johnathon.oberbrunner@yahoo.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462562, N'Зайцев', N'Владимир', N'Давидович', N'2376', N'443711', CAST(N'1998-01-26T00:00:00.000' AS DateTime), N'350501, г. Екатеринбург, ул. Парковая, 2, кв. 7', N'bradly29@gmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462563, N'Иванов', N'Виталий', N'Даниилович', N'2568', N'386237', CAST(N'1976-08-11T00:00:00.000' AS DateTime), N'450048, г. Екатеринбург, ул. Коммунистическая, 21, кв. 3', N'stark.cristina@hilpert.biz')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462564, N'Захаров', N'Матвей', N'Романович', N'2556', N'439376', CAST(N'1993-07-12T00:00:00.000' AS DateTime), N'644921, г. Екатеринбург, ул. Школьная, 46, кв. 37', N'bruen.eleanore@yahoo.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462565, N'Иванов', N'Степан', N'Степанович', N'2737', N'407501', CAST(N'1998-09-19T00:00:00.000' AS DateTime), N'614228, г. Екатеринбург, ул. Дорожная, 36, кв. 54', N'percival.halvorson@yahoo.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462566, N'Ткачева', N'Милана', N'Тимуровна', N'2581', N'441645', CAST(N'1998-05-24T00:00:00.000' AS DateTime), N'350940, г. Екатеринбург, ул. Первомайская, 23, кв. 2', N'javonte71@kuhlman.biz')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462567, N'Семенов', N'Даниил', N'Иванович', N'2675', N'427933', CAST(N'1976-01-04T00:00:00.000' AS DateTime), N'344990, г. Екатеринбург, ул. Красноармейская, 19, кв. 92', N'vconnelly@kautzer.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462568, N'Виноградов', N'Вячеслав', N'Дмитриевич', N'2967', N'434531', CAST(N'1976-07-12T00:00:00.000' AS DateTime), N'410248, г. Екатеринбург, ул. Чкалова, 11, кв. 75', N'anabelle07@schultz.info')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462569, N'Соболева', N'Николь', N'Фёдоровна', N'3070', N'449655', CAST(N'1976-05-02T00:00:00.000' AS DateTime), N'400839, г. Екатеринбург, ул. 8 Марта, 46, кв. 44', N'nitzsche.katlynn@yahoo.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462570, N'Тихонова', N'Анна', N'Львовна', N'3108', N'451174', CAST(N'1985-03-23T00:00:00.000' AS DateTime), N'450539, г. Екатеринбург, ул. Заводская, 3, кв. 81', N'corine16@von.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462571, N'Кузнецова', N'Ульяна', N'Савельевна', N'3250', N'464705', CAST(N'1999-06-03T00:00:00.000' AS DateTime), N'614591, г. Екатеринбург, ул. Цветочная, 20, кв. 40', N'otha.wisozk@lubowitz.org')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462572, N'Смирнова', N'Анна', N'Германовна', N'3392', N'471644', CAST(N'1997-07-18T00:00:00.000' AS DateTime), N'400260, г. Екатеринбург, ул. Больничная, 30, кв. 53', N'may.kirlin@hotmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462573, N'Черепанова', N'Анна', N'Давидовна', N'3497', N'487819', CAST(N'1985-11-06T00:00:00.000' AS DateTime), N'660924, г. Екатеринбург, ул. Молодежная, 32, кв. 59', N'bryana.kautzer@yahoo.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462574, N'Григорьев', N'Максим', N'Кириллович', N'3560', N'491260', CAST(N'1999-05-26T00:00:00.000' AS DateTime), N'644133, г. Екатеринбург, ул. Гагарина, 28, кв. 69', N'deborah.christiansen@quigley.biz')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462575, N'Голубев', N'Даниэль', N'Александрович', N'3620', N'506034', CAST(N'1999-06-14T00:00:00.000' AS DateTime), N'450698, г. Екатеринбург, ул. Вокзальная, 14, кв. 37', N'connelly.makayla@yahoo.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462576, N'Миронов', N'Юрий', N'Денисович', N'3774', N'511438', CAST(N'1985-01-26T00:00:00.000' AS DateTime), N'620653, г. Екатеринбург, ул. Западная, 15, кв. 25', N'tatum.collins@fay.org')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462577, N'Терехов', N'Михаил', N'Андреевич', N'3862', N'521377', CAST(N'1976-07-06T00:00:00.000' AS DateTime), N'644321, г. Екатеринбург, ул. Клубная, 32, кв. 10', N'itzel73@anderson.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462578, N'Орлова', N'Алиса', N'Михайловна', N'3084', N'535966', CAST(N'1997-02-24T00:00:00.000' AS DateTime), N'603653, г. Екатеринбург, ул. Молодежная, 2, кв. 45', N'arjun39@hotmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462579, N'Кулаков', N'Константин', N'Даниилович', N'4021', N'541528', CAST(N'1993-06-20T00:00:00.000' AS DateTime), N'410181, г. Екатеринбург, ул. Механизаторов, 16, кв. 74', N'ohara.rebeka@yahoo.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462580, N'Кудрявцев', N'Максим', N'Романович', N'4109', N'554053', CAST(N'1998-05-10T00:00:00.000' AS DateTime), N'394207, г. Екатеринбург, ул. Свердлова, 31, кв. 28', N'danika58@rath.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462581, N'Соболева', N'Кира', N'Фёдоровна', N'4537', N'564868', CAST(N'1998-03-14T00:00:00.000' AS DateTime), N'420633, г. Екатеринбург, ул. Матросова, 18, кв. 41', N'janae.bogan@gmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462582, N'Коновалов', N'Арсений', N'Максимович', N'4914', N'572471', CAST(N'1985-02-18T00:00:00.000' AS DateTime), N'445720, г. Екатеринбург, ул. Матросова, 50, кв. 67', N'vern91@yahoo.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462583, N'Гусев', N'Михаил', N'Дмитриевич', N'4445', N'581302', CAST(N'1999-11-23T00:00:00.000' AS DateTime), N'400646, г. Екатеринбург, ул. Октябрьская, 47, кв. 65', N'mariana.leannon@larkin.net')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462584, N'Суханова', N'Варвара', N'Матвеевна', N'4743', N'598180', CAST(N'1993-09-13T00:00:00.000' AS DateTime), N'644410, г. Екатеринбург, ул. Красная, 17, кв. 69', N'vmoore@gmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462585, N'Орлова', N'Ясмина', N'Васильевна', N'4741', N'601821', CAST(N'1984-06-24T00:00:00.000' AS DateTime), N'400750, г. Екатеринбург, ул. Школьная, 36, кв. 71', N'damon.mcclure@mills.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462586, N'Васильева', N'Ксения', N'Константиновна', N'4783', N'612567', CAST(N'1999-08-01T00:00:00.000' AS DateTime), N'660590, г. Екатеринбург, ул. Дачная, 37, кв. 70', N'grady.reilly@block.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462587, N'Борисова', N'Тамара', N'Данииловна', N'4658', N'621200', CAST(N'1993-05-29T00:00:00.000' AS DateTime), N'426083, г. Екатеринбург, ул. Механизаторов, 41, кв. 26', N'boyd.koss@yahoo.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462588, N'Дмитриев', N'Мирон', N'Ильич', N'4908', N'634613', CAST(N'1985-04-13T00:00:00.000' AS DateTime), N'410569, г. Екатеринбург, ул. Парковая, 36, кв. 17', N'obartell@franecki.info')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462589, N'Лебедева', N'Анна', N'Александровна', N'5092', N'642468', CAST(N'1985-03-30T00:00:00.000' AS DateTime), N'443375, г. Екатеринбург, ул. Дзержинского, 50, кв. 95', N'reina75@ferry.net')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462590, N'Пономарев', N'Артём', N'Маркович', N'5155', N'465274', CAST(N'1984-06-02T00:00:00.000' AS DateTime), N'614316, г. Екатеринбург, ул. Первомайская, 48, кв. 31', N'karson28@hotmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462591, N'Борисова', N'Елена', N'Михайловна', N'5086', N'666893', CAST(N'1976-05-23T00:00:00.000' AS DateTime), N'445685, г. Екатеринбург, ул. Зеленая, 7, кв. 47', N'damaris61@okon.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462592, N'Моисеев', N'Камиль', N'Максимович', N'5333', N'675375', CAST(N'1999-06-17T00:00:00.000' AS DateTime), N'614505, г. Екатеринбург, ул. Нагорная, 37, кв. 31', N'carroll.jerod@hotmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462593, N'Герасимова', N'Дарья', N'Константиновна', N'5493', N'684572', CAST(N'1984-10-13T00:00:00.000' AS DateTime), N'426629, г. Екатеринбург, ул. Весенняя, 32, кв. 46', N'ron.treutel@quitzon.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462594, N'Михайлова', N'Мария', N'Марковна', N'5150', N'696226', CAST(N'1976-12-02T00:00:00.000' AS DateTime), N'603743, г. Екатеринбург, ул. Матросова, 19, кв. 20', N'olen79@yahoo.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462595, N'Коршунов', N'Кирилл', N'Максимович', N'1308', N'703305', CAST(N'1985-05-22T00:00:00.000' AS DateTime), N'450750, г. Екатеринбург, ул. Клубная, 23, кв. 90', N'pacocha.robbie@yahoo.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462596, N'Алексей', N'Дмитрий', N'Радомирович', N'4612', N'985734', CAST(N'1990-07-12T00:00:00.000' AS DateTime), N'Ул. Маршала рыбалко 45', N'abdullibv5@gmail.com')
INSERT [dbo].[Клиенты] ([Код], [Фамилия], [Имя], [Отчество], [Серия паспорта], [Номер паспорта], [Дата рождения], [Адрес], [Электронная почта]) VALUES (45462597, N'Романов', N'Владислав', N'Раманович', N'3456', N'234121', CAST(N'1999-03-09T00:00:00.000' AS DateTime), N'Маршала рыбалко 45,12', N'abdullinv5@gmail.com')
SET IDENTITY_INSERT [dbo].[Клиенты] OFF
GO
SET IDENTITY_INSERT [dbo].[Оборудование] ON 

INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (1, N'1', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (2, N'2', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (3, N'3', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (4, N'4', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (5, N'5', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (6, N'6', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (7, N'7', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (8, N'8', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (9, N'9', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (10, N'10', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (11, N'11', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (12, N'12', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (13, N'13', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (14, N'14', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (15, N'15', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (16, N'16', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (17, N'17', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (18, N'18', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (19, N'19', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (20, N'20', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (21, N'21', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (22, N'22', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (23, N'23', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (24, N'24', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (25, N'25', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (26, N'26', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (27, N'27', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (28, N'28', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (29, N'29', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (30, N'30', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (31, N'31', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (32, N'32', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (33, N'33', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (34, N'34', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (35, N'35', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (36, N'36', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (37, N'37', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (38, N'38', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (39, N'39', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (40, N'40', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (41, N'41', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (42, N'42', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (43, N'43', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (44, N'44', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (45, N'45', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (46, N'46', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (47, N'47', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (48, N'48', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (49, N'49', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (50, N'50', 1)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (51, N'51', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (52, N'52', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (53, N'53', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (54, N'54', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (55, N'55', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (56, N'56', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (57, N'57', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (58, N'58', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (59, N'59', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (60, N'60', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (61, N'61', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (62, N'62', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (63, N'63', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (64, N'64', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (65, N'65', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (66, N'66', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (67, N'67', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (68, N'68', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (69, N'69', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (70, N'70', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (71, N'71', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (72, N'72', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (73, N'73', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (74, N'74', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (75, N'75', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (76, N'76', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (77, N'77', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (78, N'78', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (79, N'79', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (80, N'80', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (81, N'81', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (82, N'82', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (83, N'83', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (84, N'84', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (85, N'85', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (86, N'86', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (87, N'87', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (88, N'88', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (89, N'89', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (90, N'90', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (91, N'91', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (92, N'92', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (93, N'93', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (94, N'94', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (95, N'95', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (96, N'96', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (97, N'97', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (98, N'98', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (99, N'99', 2)
GO
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (100, N'100', 2)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (101, N'101', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (102, N'102', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (103, N'103', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (104, N'104', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (105, N'105', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (106, N'106', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (107, N'107', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (108, N'108', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (109, N'109', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (110, N'110', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (111, N'111', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (112, N'112', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (113, N'113', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (114, N'114', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (115, N'115', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (116, N'116', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (117, N'117', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (118, N'118', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (119, N'119', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (120, N'120', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (121, N'121', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (122, N'122', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (123, N'123', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (124, N'124', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (125, N'125', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (126, N'126', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (127, N'127', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (128, N'128', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (129, N'129', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (130, N'130', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (131, N'131', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (132, N'132', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (133, N'133', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (134, N'134', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (135, N'135', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (136, N'136', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (137, N'137', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (138, N'138', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (139, N'139', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (140, N'140', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (141, N'141', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (142, N'142', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (143, N'143', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (144, N'144', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (145, N'145', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (146, N'146', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (147, N'147', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (148, N'148', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (149, N'149', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (150, N'150', 3)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (151, N'151', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (152, N'152', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (153, N'153', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (154, N'154', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (155, N'155', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (156, N'156', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (157, N'157', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (158, N'158', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (159, N'159', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (160, N'160', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (161, N'161', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (162, N'162', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (163, N'163', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (164, N'164', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (165, N'165', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (166, N'166', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (167, N'167', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (168, N'168', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (169, N'169', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (170, N'170', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (171, N'171', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (172, N'172', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (173, N'173', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (174, N'174', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (175, N'175', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (176, N'176', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (177, N'177', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (178, N'178', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (179, N'179', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (180, N'180', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (181, N'181', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (182, N'182', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (183, N'183', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (184, N'184', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (185, N'185', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (186, N'186', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (187, N'187', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (188, N'188', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (189, N'189', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (190, N'190', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (191, N'191', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (192, N'192', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (193, N'193', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (194, N'194', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (195, N'195', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (196, N'196', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (197, N'197', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (198, N'198', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (199, N'199', 4)
GO
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (200, N'200', 4)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (201, N'201', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (202, N'202', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (203, N'203', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (204, N'204', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (205, N'205', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (206, N'206', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (207, N'207', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (208, N'208', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (209, N'209', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (210, N'210', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (211, N'211', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (212, N'212', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (213, N'213', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (214, N'214', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (215, N'215', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (216, N'216', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (217, N'217', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (218, N'218', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (219, N'219', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (220, N'220', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (221, N'221', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (222, N'222', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (223, N'223', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (224, N'224', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (225, N'225', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (226, N'226', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (227, N'227', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (228, N'228', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (229, N'229', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (230, N'230', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (231, N'231', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (232, N'232', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (233, N'233', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (234, N'234', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (235, N'235', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (236, N'236', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (237, N'237', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (238, N'238', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (239, N'239', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (240, N'240', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (241, N'241', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (242, N'242', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (243, N'243', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (244, N'244', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (245, N'245', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (246, N'246', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (247, N'247', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (248, N'248', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (249, N'249', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (250, N'250', 5)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (251, N'251', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (252, N'252', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (253, N'253', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (254, N'254', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (255, N'255', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (256, N'256', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (257, N'257', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (258, N'258', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (259, N'259', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (260, N'260', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (261, N'261', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (262, N'262', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (263, N'263', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (264, N'264', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (265, N'265', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (266, N'266', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (267, N'267', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (268, N'268', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (269, N'269', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (270, N'270', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (271, N'271', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (272, N'272', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (273, N'273', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (274, N'274', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (275, N'275', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (276, N'276', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (277, N'277', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (278, N'278', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (279, N'279', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (280, N'280', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (281, N'281', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (282, N'282', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (283, N'283', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (284, N'284', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (285, N'285', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (286, N'286', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (287, N'287', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (288, N'288', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (289, N'289', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (290, N'290', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (291, N'291', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (292, N'292', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (293, N'293', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (294, N'294', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (295, N'295', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (296, N'296', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (297, N'297', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (298, N'298', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (299, N'299', 6)
GO
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (300, N'300', 6)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (301, N'301', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (302, N'302', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (303, N'303', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (304, N'304', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (305, N'305', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (306, N'306', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (307, N'307', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (308, N'308', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (309, N'309', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (310, N'310', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (311, N'311', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (312, N'312', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (313, N'313', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (314, N'314', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (315, N'315', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (316, N'316', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (317, N'317', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (318, N'318', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (319, N'319', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (320, N'320', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (321, N'321', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (322, N'322', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (323, N'323', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (324, N'324', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (325, N'325', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (326, N'326', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (327, N'327', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (328, N'328', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (329, N'329', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (330, N'330', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (331, N'331', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (332, N'332', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (333, N'333', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (334, N'334', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (335, N'335', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (336, N'336', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (337, N'337', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (338, N'338', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (339, N'339', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (340, N'340', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (341, N'341', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (342, N'342', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (343, N'343', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (344, N'344', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (345, N'345', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (346, N'346', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (347, N'347', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (348, N'348', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (349, N'349', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (350, N'350', 7)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (351, N'351', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (352, N'352', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (353, N'353', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (354, N'354', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (355, N'355', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (356, N'356', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (357, N'357', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (358, N'358', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (359, N'359', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (360, N'360', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (361, N'361', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (362, N'362', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (363, N'363', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (364, N'364', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (365, N'365', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (366, N'366', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (367, N'367', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (368, N'368', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (369, N'369', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (370, N'370', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (371, N'371', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (372, N'372', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (373, N'373', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (374, N'374', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (375, N'375', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (376, N'376', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (377, N'377', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (378, N'378', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (379, N'379', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (380, N'380', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (381, N'381', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (382, N'382', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (383, N'383', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (384, N'384', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (385, N'385', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (386, N'386', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (387, N'387', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (388, N'388', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (389, N'389', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (390, N'390', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (391, N'391', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (392, N'392', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (393, N'393', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (394, N'394', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (395, N'395', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (396, N'396', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (397, N'397', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (398, N'398', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (399, N'399', 8)
GO
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (400, N'400', 8)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (401, N'401', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (402, N'402', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (403, N'403', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (404, N'404', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (405, N'405', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (406, N'406', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (407, N'407', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (408, N'408', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (409, N'409', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (410, N'410', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (411, N'411', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (412, N'412', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (413, N'413', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (414, N'414', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (415, N'415', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (416, N'416', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (417, N'417', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (418, N'418', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (419, N'419', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (420, N'420', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (421, N'421', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (422, N'422', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (423, N'423', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (424, N'424', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (425, N'425', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (426, N'426', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (427, N'427', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (428, N'428', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (429, N'429', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (430, N'430', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (431, N'431', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (432, N'432', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (433, N'433', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (434, N'434', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (435, N'435', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (436, N'436', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (437, N'437', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (438, N'438', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (439, N'439', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (440, N'440', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (441, N'441', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (442, N'442', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (443, N'443', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (444, N'444', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (445, N'445', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (446, N'446', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (447, N'447', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (448, N'448', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (449, N'449', 9)
INSERT [dbo].[Оборудование] ([Код], [Код оборудования], [Тип]) VALUES (450, N'450', 9)
SET IDENTITY_INSERT [dbo].[Оборудование] OFF
GO
SET IDENTITY_INSERT [dbo].[Пользователи] ON 

INSERT [dbo].[Пользователи] ([Код], [Сотрудник], [Логин], [Пароль], [Фото]) VALUES (1, 101, N'Ivanov@namecomp.ru', N'2L6KZG', 0xFFD8FFE000104A46494600010100000100010000FFDB0043000504040504030505040506060506080E0908070708110C0D0A0E141115141311131316181F1B16171E1713131B251C1E2021232323151A26292622291F222322FFDB00430106060608070810090910221613162222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222FFC00011080140016803012200021101031101FFC4001D000100020203010100000000000000000000060705080102030409FFC4004B100001030301040606060606090500000000010203040511061221314107132251718108146191A1B11532426282C123435272B2D1162433343653445473839293A2C2F0258494B3D2FFC4001801010101010100000000000000000000000001030204FFC4001B11010101010100030000000000000000000001021121031331FFDA000C03010002110311003F00DCB0000000000000000000000000000000000A3FA48F48AB0E93926B769C48EF5798D765DB0FC53C2EEE73D3EB2FB1B9F6AA0175D4D4C3474CF9EAA58E18634DA7C92BD1AD6A77AAAEE429FD59E91FA2B4E2C90DBA69AF958CDDB14088B1A2FB645ECFBB26A46AFE90B536BAAA597525D269A245CB2963EC411F8313767DAB95F6916C017CDF7D29B56D7AB9B63B75BED517D97BD16A24F7AAA37FE92BCAFE97FA40BA3DEB55AB2E6D47F1653BD216FB9888420E13701949F50DF2AB2B577AB9CCE5E2AFAB9157F88EB0DFAF103F6A0BB5C23777B6AA445FE231E1370160593A6BD7FA7DCC5A5D4753531B7F555E893B553DBB5DAF729B0FD1B7A485AB5355C36CD5D04768BA48A8D8EA1AEFEAD2AAAE1132BBD8BEC5CA7B4D3838C01FA8C0D5BE843A78A1B7E9F7D875FDCBA86D0479A2AF9F69CAF8D37754E54455572725E69BB8A6FB5E8BA7CE8E2BAA5B0C7A92089EE54445A88A489AAABF79CD4402CD078D2D543594CCA8A49639A09132C9637A39AE4EF454DCA7B000000000000000000000000000000000000000000000000000000000000003E5B85C296D76F9EB6E13C74F494EC57CB3CAE46B58D4E2AAA7BCB2B218DCF91C8D63115CE7B9708D44E2AAA68EF4DDD304FAFAF325A6CB33A3D334727630BFDF1E8BFDABBEEFECA79AEFE0192E973A7CAFD5AE9ECFA49F2DBF4FAE5B24E9964D589EDC6F6317F678AA2EFC7028C40729CC0E000000000000000000004FBA35E956FBD1BDD637D148FAAB3BDFFD66DAF7761ED5E2ACFD87F72A6EEFCA1BDBA57555AF58E9BA5BCD8A749A8EA137677398EE0AC7272722EE54FCB79F9A85ABD08F49CEE8FF00582417091CBA7AE7235954C5DE903F83664EEC70777B7C100DF107563DB2311CC5456AA6515399D800000000000000000000000000000000000000000000000000000007C775B953D9ECD5971AE7EC52D1C2F9A577735A8AABF2035F7D26FA477DB2CD168EB44FB1577167595EF62E1590655123F62BD5173F75ABDE6A32260CCEABD4355AB757DCEFD5CABD7DC27593633948DBC18C4F635A889E46193701C9CA733DA928EA2BEAE3A6A2825A8A89170C8A162BDCE5F6226F2C2B6F41DAEAE10A49F45C348D7704ADAA646EC7EEEF54F302B705995DD056BBA262B9B6DA6ABC7D9A3AB63DDE48B8552BEB9DB2BECD54B4F78A2A9A1993EC54C4E8D7E29BC0F8C1D769392A2F80DA44E2A89E2076074EB1BFB4DF79CF58DFDA6FBD00EC0F5A7A4AAAC9519474B3D43978243139EABEE452576DE8BB5A5D70B49A72BD18BFAC9D890B7DEF54021E0BB6CDE8E1A86A9124BD5CE82DEDC67AB891D3C9F0446A7BD4CED77A3344B42F75B75248EABC651B5346891AAFB765729F1035D4E0CD6A7D2977D1F7975BEFB4AB0CB8DA8E46AED472B7F698E4E29F14E6886180DC9F46BE919DA874AC9A62ED36DDCECCC4F577B9D959A9B837CD8BD9F0D92FD3F35B46EA9ACD17ACADD7DB6AE66A39115F1E7092C6BB9EC5F14DDEE5E47E8E5A6E94B79B351DCADF224B495B0B2685E9F69AE4CA2FC40FB40000000000000000000000000000000000000000000000000000A3BD277533ACDD1532D5049B33DF2A5B03B0B85EA9BDB93E4D4FC45E26987A525F16BFA4FA1B5B5DFA3B5D0A6D37EFC8AAE55FF851A0510886574ED82B753EA4A2B3DADA8EAAAB7ECA2BB7358D4DEE7B979222264C4A73360BD1A6D113EA7505E1ED474B1B63A589553823BB4FF7E1A05C7A2F41DA34359D296D5123EA9EDFEB35B2353AD9DDED5E4DEE6A6E4F6F12569CCE0E53981C1D66A786AE158AAE18A78978B25623D3DCA8A87A1CA7302352E82D2733F6A5D376872F7FAA313E48768B41E93891DD5E9BB4373C7FAA317E6848C26E030ADD25A79B9D9B0DA53FF6317FF93DE2B0DA29DFB50DA6DD1BBBD9491A2FC8C9803A31A91262244627731113E47639C0C01C00008EEB1D1F6DD6BA6E7B5DD634CB915D0542276E9E4C6E7B57E69C15371A4BA8AC35BA6351D6D9EE91EC55523F65CA9F55E9C5AE6F7A2A614DFC287F48BD291D55828B5353C6895544F4A6A956A6F744E55D955FDD76EFC606B360DC9F45DD56EBA747959619E4DB9EC95188D1577F53265CD4F276DA7860D372E8F468BEADABA60650B9DB30DDA9648573C36DA9B6DFE1727981BBC00000000000000000000000000000000000000000000000000007E77F4BB7275DFA66D5754AEDA6B6BDF0315386CC6891A7F0FC4FD103F322F954EADD4B75AA7A76A7AC9A455CF1CC8E5FCC0C7A6E3673D1A571A3EFEDEEB833FF00A8D64368FD1B2156E83BBCCE4CF5D71C27E18DA9F9817680000000000000000000000011DD736C65E3A3DBFD04899EBE8A5D9FDE6B55C8BEF4424479544692D34B12A22F58C7377FB5AA807E793532D45EF445249A0EEAB63E9234E5C9170DA6B8C2E72E71D957A35DF055300F66C4AF8D577B1CAD5F25C1D15CB1A2BD177B53693D8A9BD00FD4607C164AC6DC74F5BAB58EDA6D4D3472A3BBF69A8B9F89F7800000000000000000000000000000000000000000000000F9AB6A3D5A9249538A261A9ED015F22C36EA995BF5A389CE4F14453F309CE57C8E7AFDB5DAF7A9FA315974A99ECD5F02B565964A691B1226132E56AE13DF84F33F3AA6A59E8AA24A5AB89F0D453B9629627A2A398E45C2A2A2F7281D3FF309C4DDDE8BB4DC9A57A34B4DBEA588CAB7B16A6A11394922ED2A792613C8A23A0DE8DDDA86F29A8AF102A5A2DD2E60639BFDE266AEEF16B78AF7AE13929B56BBD40E0000000000000000000000000E5BF5DBE29F33800681EA1A275BF55DE295C987435B33153C247218C2D1E9DF4ECB65E946A6B123C51DDD895313B1F6FEAC89EF4CFE2229A2744DCF5CEA165BAD4C4646DED54553D3F47033BD7BD579226F5F781BDFD16D5BEB3A21D293CDBDEEB6419F26227E44C081E90A45D3360B4D929E7927A5A08194EC74B8DA7226ECAE13893C45C800000000000000000000000000000000000000000000031F784CDB5FEC5455F79903E5B8B36EDD3A271D9DC044CABF5C74396BD65AB686EEB37A9AAAA36E2C8DBDAAA627D5C2FD977D9DAEEF6A167A7300785152535BE820A3A0819052D3B1238A26261AC6A70443E93AA6E3B01C000000000000000000000000000086F48FA129F5F6927DBE47B61AE81DD6D154B9AAA9149DCB8FB2BC17DE9BD0FB744E8FA1D15A5E0B65BDA8AF44DBA8A854ED4F2AFD672FB33B9139222125007783FBCC69F793E64CD1308442899B77081BF7B2BE09BC97A73000000000000000000000000000000000000000000000074919B6C56E719E783B80219333ABA99598C6CBB0743317AA4D97A54353B2BD9763BCC3800000000000000000000000000000000000633B938AF04EF032765876AADD22A6518982448983E3B6D2FAB5135153B6EDEE5F69F680000000000000000000000000000000000000000000000001D5EC6C8C56BD115ABC5148B5751BA925DFBD8EFAAA4ACE9246D91BB2F4456AF25402180F7AEA6F56AC7B1117678B7C0F000000000000000000000000000000066AD36F5454A89DBBFEC357E679D9E8992A2CF3311D85EC67E6679100EC9C00000000000000000000000000000000000000000000000000000000632F14BD752EDB53B71EFF0022384D9511530BC148A5CE91696A9CA9FD9BD72DFE407C8000000000000000000000000778A374D2B6366F572E0E8676CB47B2CF597FD67261A8BC5100CA53C290C0C637186A226E3D537044C000000000000000000000000000000000000000000000000000000000007CF554ACAAA774722673C17B94FA0010B9637C12AC72370E6F13A926B9D0255C48E6AA3646F354E24655151551772A7100000000000000000001EF494AFA99D18D4C271555E007ADBA87D727CBD3F42CFADEDF61286351ADC353721E7040C823464698443D53981C800000000000000000000000000000000000000000000000000000000000000018EAEB5B2A976E35464BCDD8E3E2644010901530B853C9676317122A33B955772F981EA000000000E1CE6B18AE7B91AD4E6E5C2183AED431C71B994488F917EDAFD54FE7F203255D5D15053AC92AE5CBB9AC4E2E526F410B22A38D634C6DB51CBE2A52934AFA8916495CAE7AF1552EEA45FEA507FB36FC80F7000000000000000000000000000000000000000000000000000000000000000000003CAA3FB071EA757AA23173CC088542224EB83C1D13258D592351CDEE543EDADA3961915E89B4C72E729C8F9500C25551D6512F596D99CB17385C9B58F0CF13E38F504ED66248D8E5EF455424EA62EBED51D626D370C97F69138F8818EFE91BB9D337FE353C25D41572336634646DF62657E263EA6965A495639DAAD7273E4BE07801EB354CF50AAB3CCF9157F697278E0E4002F0A4FEE507FB36FC8A9ACF60AABBBD1D1FE8A979CF226EC7B139FF00E6F2D983F470C71E73B0D46E7C100FA004000000000000000000000000000000000000000000000000000000000000000E924AC858E7CAE4631A99739CB8444F6A94274C1D3F4FA1B50D4E9DB1DAA39AE3144C7C95754E5EAD9B6994446377B95115178A2789ABFAA3A43D53AD5EE5D4B79A9AA8557294CC5EAE16F846DDDEFCA81BB953D33E89A7D4F43638AF50D5DC2B2A5B4CD6D27E9191BDCB84DB7A765133BB8A93773D5EE5553F31E095F4D3C7340E564D13DAF63D38B5C8B945F7A21FA3DA4AFF0016A9D1767BE40A8ADB852B26544E4E54ED2792A2A79019954454545DE863AA2DA92AABA0446BBBB9299208045DF1BE372B646E150E9824F3C0C9DB891A8BEDE660EA6DF2419733B4CF9018FA8A68AA6258E7623D8BC5148B5C2CB2D1B564857AD873C93B4DF14E7E24BB27D54F412D526D222B234E2E54FC80ADA2865A895B153C4F965770631155549BD9F46322D99EECA923F8A53B57B28BF7979F8126A2B6D2D0AC8EA58238DF27D772377BBC7F91F6E00E8C446351AD444444C613722781EAD5E274C186D597F8B4BE8CBC5EA754465052493222FDA7227653CD709E606028FA66D1551A9ABEC73DE61A3B85154BA99C957FA3648E6AE1761EBD95DFBB8A160C52B2689B244E6BE37265AE6AE517CCFCBF96796A26926A97F5934CF592573BED39555557DEAA49B4AF489AA7463D3FA3D7AAAA68517FBB39DD642BFEEDD94F76140FD1D0501D1074FD3EB8D45069CBF5A994F729227BA3ABA57AF5526C2655158EDED5C6782AF0E45FC8BC40E4000000000000000000000000000000000000000000000000115BEEBCB45915F12CBEB554DFD4C0A8B8F15E09F32AFBE6BFBBDE76A38A45A2A55E3140EC2BBC5DC57CB005AD7CD6B68B1239B533A4B509FA885769FE7C93CD4AC6FBD24DDEE4AF8A83FF004FA65FF2D732393DAEE5E442510E700509AF6A9D55D205D9EF7B9EF6C8D62B9CB95DCD442349CCC96A09BD67545D66CE7ACAA9173F8953F231A9CC0E4DBEF45DD49F48683B958A67E67B4D4F591A2AFEAE5CBB09E0F47FBCD412D9F47BD49FD1FE9928607BD5B4D7963A8A44FBCBDA8D7FE26A27E203788000749A78A9A17CB50F48E26265CE5E08843AB35CC6D91CCA1A557A27DB9971F03E3D6D727CD70650B1D8861447BD13ED3977A7B93E6451DBC32D6ECBC891AEAA9565DBF52A7FDDCBB1F332B45AE5BB68CAEA456B178C90AE71F857F99076F3392B9FB2AE58278EA616CD0391F0BD32D7A733D4AF745DCDD0DC1D4322AAC53A2B9B95FAAE4DFF0014F9161211AE6F674282F4A2D47EA3A0ADD6089D89AEF53D64AD45FD4C5BF7FB15EACF717E9A39E907A996FDD3157D344F55A6B331B44C4FBC9DA93FEA72A7E10E953800093683A97526BDB5491BD58F5915AD722E15155AA86D6D87A49BADB1591DC57E90A74DCAB26E9113D8EE7E7EF34FEC12FABEA8B5CD9C757551AE7F1221B1606C2D8F5A5A2FAC44A7A848AA57FD1A6546BFCB92F92923355D328A8A8AA8A9C15096D8B5FDDACC8D8A47A5652A6E48E65CAB7C1DC53CF205F608A5875E59EF6AD8D255A5A977EA67DD9F05E0BF3256000000000000000000000000000000000011EBFEB0B5E9F8D52A65EB2A7194A78B7BBCFB93C4A8AFFAF6ED7CDB898FF53A35FD4C2EDEBE2EE2BF0402D3BEEBDB45915D1759EB5549FA981738FDE7704F9FB0AA6FBAEAF37B4744E99296957F534F94CFEF3B8AFC88C00000001EF46355CEE0D4555F007C37A9FD5AC1709FFCBA6917FE95035C2695679E49578BDCAE5F155553AA730C4C331DC76C01C1ED4B552D0D7D355D33D59514D2B6589E9C5AE6AE517DE8796001FA4BA72F706A3D2D6CBC52E3AAB853327444E5B49954F25CA7919528AF462D48EBAF4655567995CB3D92A55A88EE514997B7E28F4F22F19A56C313A477D56A640AC354FF008A6B7C5BFC28620CADFE37ADD1F3BD73D7222E7DB8C298ACE4B23CFBFD0001CB2DA6BFC4B43FED7F252D342ABB046F5BB473C6B8EA3B5C39E17059F04ED9A247B782A7B97B88DFE39C8F8351DEA1D39A5EE779AA7621B7533EA1C99FADB29944F35C21F9BF55573D756D455D5C8B254544AF9647AF1739CE572AFBD4DC0F49CD46EB674674D6881CE49EF3528D72379C31E1EEF8EC2799A708A1DB90001DE37AC53C72357B51B91C9E28B936698EDB62393EAB911517BD0D62543642CD3F5F61B7CB9DAEB29A3767DBB29903EE000025362D7378B1A3626CDEB5489FA8A85CE13EEBB8A7C88B1D80BEAC1AFAD17BD985D22D2567F933AE36BF75DC17E64B10D5925760D7B76B26229245ACA34E10CCEDEDFDD7714F8817D8239A7F57DAF5044894B2F5753CE9E55C3BCBBD3C091A00000000000000000000F1AAAA8A8E9649EA5E8C8636AB9CE5E08880769E78A9A9DF35448C8E26265EF7B9111A9DEAAA54BAA7A4A9675968F4FABE28B83AAF839DFB89C93DBC7C08F6AED6553A8AB16281CF86DB1AE590A2EF7F739DEDF672F891745CA01C2AB95EE739CAE73972AAE5CAAA800000000000182D65D6FF0042EE89031F23DF0EC2318DCAAED3913819D395035B12D75FBFFA855FFC877F239FA2EBFF00D42AFF00E43BF91B1E846354EB3A2D38C743D9A8AF54ECC08B8D9F6B97927C540A467A5A8A646AD4D3CD123B87591AB73EF3C5781F65D2ED5B79AD754DC6774B22F0E48D4EE44E487C69CC0B83D1C3522D8FA5E868657ECD35EA0752AE787589DB8D7DED54FC46DFDDEA3AC91B146BB9BF5973C54FCE9B6D7D45A6F14571A2915953453B2789C9C9CD72393E46FDDB2E715E6CF4773A65DA86BA165431D9E4E6A2E3CB38039AAA28AB29DD14C9E0EE68A442BA8DD4356B0B9E8FDC8A8E4EE2729DC41EE137AC5C6793396EDAA37C1377E4567ACBE19EB20A6D9F589591ED70DA5C64ED6CABA5BADCE2A2A5A862CB222AA2E17184E2477546FF0055F66D7E4632C356B41A8A82A51CA891CCDCAA772EE5F8287322EFA4A48E8E048E24DDCD79A99BB5CFB0F744E5DCEFABE263389F35CAE5159AD35973A97EC41430BAA1EEF63133F9608D646AD7A476A6FA73A5C9EDF0BF34B6385B4A89CBAC5EDC8BEF7227E129D4DC7D771B8D45DAF15B71AD7ABEA6B677CF2B979B9CE572FCCF982BD61A69EA36BD5E1965D9E3D5C6AEC78E10F6FA36B7FD4AAFFF008EFF00E476B5DDAB6CD70655DBA77452B7BB8393B9C9CD0BAF4B6B2A3D471242AA905C1A9DA815DB9DED677A7C7E60529F45D7AFD5A1AB5FF70F4FC8BC746ACABA2AD4D9D8F8DF1C3B0AC7B70A98554E0A48769C99D972A781C600270000000000001D98F746F4731CAD726F4545C2A2F7A164693E9264A47328F50B9F2C2B86B2AD132E627DFEFF0014DFE256A72BC00DA2A7A88AAA9993D3C8C9229132D7B1728A9E27A940690D6351A6AB3AA915F2DB655CC90677B3EF33DBDE9CFE25F34B550D652C5514CF6C90CAD47B1ED5CA39178281EC000000000000563D2BDE9F0D2525AA07E127FD2CC9FB4D45ECA786533E459C50DD25CFD76BAA96672D8628D89ECDCABF981100000000000000000000105D77ABE7B2B99416F89EDAA999B4EA8726E635729D9EF5DDC7914E48F7CD33E599EB24AF5DA7BDCB9572F7AAF32F5D6FA77E9EB03D60666BA973243F7FBD9E69F14428AE00700003936CFD1F6FFF004AF465F47CAFCCF689D61D955CAA46EED33E6E4F23530B6FD1F6FF00F45748D25B6576CC178A758D32BBBAC676D9EF44727981B5D5322434734AE5C6C355517B97041494DFE6EAED2E622E1657237CB8915450CB77DE235A937ECFB3811C45C2EE247A8F97911B2917D58EB7E90D3F4554A9DA9624572E79F05F8A295A7A415FD6D7D19ADB627ECD45E276C3845C2AC6DED3FE4D4F3257D1D5624FA69F4FCE9A654F25DE9F99AF5E907A87E96E92A3B6C4FCC166A748D70BBBAD7F6DDEE456A7911A4548000A1DA27BE2959244F731EC7239AE62E1517BD17BCEA72805C5A1759CF7D7BEDF7063DF570B36FD61A9B9EDE1DAEE5E1E24EC8AE87D38960B0B5D3B315F568924FF0077F659E49F155254000000000000000000B6BA29BCBA5A3AAB4CAECFABFE96145E4D55DE9E195CFE252A5261D1ACFD4EBAA766709345246BEECFFDA05F00000000000006BEF481FE3FBA7EF33F81A6C11AFBD207F8FAE9FBCCFE06811900000000000000000000294E9174EA5A6F9EBD4CDD9A4AF72BB6538324E69E0BC7DE5D663EFB688AF963A9A09951BD6B7B0FC6761E9F55DE4A06B8273393D6AE966A1AD9A96A98AC9E172B1ED5E4A8A7901C9F5DAAE5359AFB4172A572A4D453B2666179B5C8BF1C2A799F21C281BC575B8C372A6B7D4523B6A9A781B3C6BDE8F4454F860C5902E88EF6B75E8FE9E9A67B9F3DB1CB4EA8EE28CE2CF82E3C89FA260B23CFAF748D6A2E4471BCC91EA3DDB246D3987794BF425E60B3D6DC9F58ED9A64A47CEF5E588D3697E193552ED729AF57EAFB9D57F6D5B3BE67F8B9CAB8F2CE0B5B5C5D5F6DD332C70BD5B2D6AF51D9E2AC54557F9613E253A9B88D239000509B7475A73E94BDFD21571ED50D12A2A2727C9C51AA9DC9C57C887D2534B5B5D0D2D3376E79DE8C637BD54D87B1DA20B1D9A0A1A64ECC6DED3BF6DDCD40C880000000000000000000128E8FFF00C7D6CF17FF000388B928E8FF00FC7D6CF17FF0380D8000000000000035FF00A4262B35FDCB6B9EC393C3610D802B4E9234954DC668EED6D8DD34AC8D239A26EF72B515551C89CF8AE7C80A881CBDAE8E473246B9AF6EE56B930A87000000000000000000000055FD27E9EDAD8BDD247BDA891D4A2734FB2E5F979A158229B35514F1D552CB4F3B76E195AAD7B7BD14D78BF59E4B1DF6A68A5CAA31D963B1F598BC17FF0039A2818D000167742B794A2D613DBA55C477085767F7D9BD3E1B46C21A7567B94967BED0DC2172A3A9666C9BB9A22EF4F34C9B810CECA8A78A78576A29588F63BBD15328563B9EF51FD51BBD53DBB7FF00691B4249AA7FD13F1FFDA462491B145248F5C3236AB9CBDC89BD42E555748B72F5ABF4746D5CB69634CA7DE76F5F86C90D43E8B855BABEE95556F5CACD22BCF9D3991A4720192B0D9A5BEDEE9E8A2CA35CBB523D3EC3117B4BEEE1EDC054FBA32D3D86BEF5591EF7663A7477144E0E77E5EF2CD4E678D2D2C3494B1D3D33362189A8D6B7B910F74DC000000000000000000000094F47AD73B5F5B765338DB55F0D87118635CF7A358D573979351557E05B5D1BE93AAB7CB2DD2E713A195ECD88627EE7353395554E59C63DE059800000003FFFD9)
INSERT [dbo].[Пользователи] ([Код], [Сотрудник], [Логин], [Пароль], [Фото]) VALUES (2, 102, N'petrov@namecomp.ru', N'uzWC67', 0xFFD8FFE000104A46494600010100000100010000FFDB0043000504040504030505040506060506080E0908070708110C0D0A0E141115141311131316181F1B16171E1713131B251C1E2021232323151A26292622291F222322FFDB00430106060608070810090910221613162222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222FFC00011080140016B03012200021101031101FFC4001D000100010403010000000000000000000000080106070902030504FFC4004C100001030301040605080705050900000000010203040511060712213108134151617114328191A1222342627292B1C11533435282A2B216245363C2253773A3D134444675839394B3D2FFC40014010100000000000000000000000000000000FFC40014110100000000000000000000000000000000FFDA000C03010002110311003F009940000000000000000000000000000000000000EB9656410BE599EC8E28DAAE7BDEEC235139AAAF6211BB681D231E9512D06818E358D8AAD75D2766F6F78C4C5ECFACECE7BBB4092524AC899BD2391AD4ED72E13DE78D3EB0D394AAA9577EB4C0E4E69256C68BFD440EBAEA2BC5FEA5D35EEE75B5B23973F3F3B95A9E08DE49EC43CB463319DC6A2F8201B018F5AE9899FBB0EA2B33D7B92BA3CFE27AF4F5B4D56DDEA49E19D9DF1488EFC0D71B98D5FA28B8EF4C9DF4D2CB4D2A494F23A27A72744E562FBD140D8EA2E4A903ED5B50D69647B568351D7EE3794550F49D9EE7E7E0645D3DD262F74B246CD4B6BA3AE85383A6A5CC327B9555ABE5C009560C4B41D2174355D3EFD454D6D13FB63A8A47AAA2F9B729F12DAD63D24ED3496E9A3D1D4935756AB551953531AC70B171EB617E53BCB8278819FC1E5E9E96A67D356C96B9FD655494913E57E11379EAC4572E138271C9EA00000000000000000000000000000000000000000000000000000000000000000005AFADB5C5A74269F75C6F322AB9EBB94F4D1E3AC9DFFBAD4FC5792117B50F483D6576AA7ADAE782D14ABC1B1D3C6D7BD13C5EF45CAF92279017E748DD7B240C87485B665675D1A4F7073178AB17D48D7C17195EF4C762A91AD5727D373BA56DE6E93D7DD6AA4AAAC9D51649A55CB9D84C267B39222703E5000000000000039F61EB692D3B51AA758DB6CF48DCBAA666A48B8CEEC68B97B97C11B95F72769E4F6170691D717CD135B254E9EA98E17CAA892B6485AF6C8D4FA2B94CA2792A013FA363638D1AD4446A26113B90E461FD986DB2835BD436D77481B6EBF6EAAB62472AC7518E7B8ABC73F5578F72A9979ABC00A8000000000000000000000000000000000000000000000000000000000000074D4C8B0D24D2379B18E727B114084DB62D5B2EA9DA6DC9525DFA0B73D69295A8BF270D55473BCDCECFB110C781EF74934923D555D2395CAABDAAAB9000000000000000000000076D356CD6DADA7AEA47AC75149236689E8B856B9ABBC8BEF436236CAC6DC6D54958CF56A6164C9DD873729F89AE852796CC6ADD5DB29D2F50E5CEF5B616FB5ADDDFC80BC4144E4540000000000000000000000000000000000000000000000000000000001F15D97165AE5EE824FE953ED3E2BB266CB5A9DF049FD2A06B9E3E1133ECA1CCE2C4F9A67D943900000000000000000000002706C55EAFD8A69ADE5F569DCD4F2491E9F9107C9BBB12FF00721A6BC629153CBAD781914000000000000000000000000000000000000000000000000000000000000EA9E349A9A5897F68C56FBD0ED2806B7DF1BA29A48DDC16372B17D8B8285C9B40B3BAC3B49D436E54C321AC7BA3FB0F5DF6FC1C85B600000000000000000000009D7B25A35A2D8F69781531FDC58FC7DACBBF320E50D04D74B8D35BE91BBD51592B6089BDEE72EEA7E26C32D542CB659A8A822FD55240C859E4D6A227E007DC00000000000000000000000000000000000000000000000000000000000001696D2AA65A4D94EA89A9DEAC9596E9B75C9CD3E4AA67E2047EE92164A766A4B56A2A2923923B942B4D2BA376F22C91F145E1F5571FC260B3924D23691B4CD91E94ED7EFB61477C847631946F245C70C9C4000000000000000000000CB7D1E2CF4B76DAAF5F58CDF5B6D1BEA616AF2EB379AC477B11EB8F1262B151ED4735515ABC953B4D735354D453327653D44B132A19D5CCD8DEAD491B945DD7639A651387812FBA3BD5CD53B1F8593C8F91B4F593451EF2E775B945C27865CA065D0000000000000000000000000000000000000000000000000000000000002DBD794DE99B38D494E89974B6DA8444EF5EADC5C8745553B6AA92685E88AD958E62E7B953006B8DABBCD45EF4452A729E0752D5CD4EFF005E17BA37278B5CA8BF81C50000000000000000000000E4DED265747EA5EA36336F7E31E91513CA9ED9153FD24356F693AB64F40EB7EC874CC0F4C3968992AA78BF2FFF005017B0000000000000000000000000000000000000000000000000000000000000000813B4DB52DA36ABA9295CDDD6FA6BE58D3BD922EFB57F98B493B49C5ACB649A775BDFE92EB784A96D4C0D4648903D1AD9DA8B9447F0CF0E3C515170B8C9092B299F4371AAA4993E769A67C4FF0036B9517F003A40000000000000000028AB86AAF72640ED8207D5D4474D0B55D2D43DB131AD4CAAB9CE46A7C54D89DAE89B6FB4D25233D5A7819127935A889F8185F66DB14B1D1C5A6355544956FAF6D1C552B4CF7A2C493B9B9EB396786738CE117899C900A8000000000000000000000000000000000000000000000000000000000000000105F6C16675976BF7E8B1F35552A55C4B8E0AD9137971FC5BC4E823D7494D22FAAB65BF5552B379F419A7AADD4FD939D96397C11CAA99FAE046200000000000000003ECB4DB24BCDF682D90355D2D6CEC81A889FBCE44FCCF8CCCBD1E34A3EF1AF1F7D9E3CD0D95BF2579A3A77A61A89E4DCBBEE812E29E0653D2C5046888C8988C6A276222610ED28854000000000000000000000000000000000000000000000000000000000000000001F3D651D3D7D14D4B5B0C7353CEC58E48E46E5AF6AA615153BB07D00084FB5BD9954E83BEBEA2823925D3B54ECD34D8CF52EFF09EBDFDCABCD3C514C6992666BFDA2596C7ADA3D29ABE86396C574B7A3E4A87355CD6395EE6E1EDFDDE09C538A2F1F14C21B49D8DD569C85D7BD2AF5B9E9A91BD6EF44E47BE9DABC515553D667D74ECE7DE062303C973E280000000000F4F4F59DDA8353DB2D0C99B02DC2A594E92B933B9BCB8CE3B49E5A5F4DDBB48E9BA5B3D9A1EAE969DBC55572E91CBCDEE5ED72905F464FE8DB40D3B3671D5DCE9DD9FFD444FCCD818154ED2A513B4A8000000000000000000000000000000000000000000000000000000000000000000001107A484FD6ED569999CF576C8BE2F914B5741ED4AFDA12648E8A54AAB539D992DF50E558FC77179B17CB871E28A5C7D22192A6D71F2490C8D89F430A47239AA8D7E37B385E4B855E2624C70C019A6E16BD9E6D324755E99B8C3A53524A8BBD6EAEC369E777D554E08AABDADFBA639D43A0753E979DCDBC59EA5B17D1A9818B2C2FF0027B5153D8B852D956A3B9F13DDB36B2D49608D1965BEDC68E24E3D54550EDCFB8B94F801E1651170BC1539A29C9C8E63D5AF6AB5C9CD1C9852EDACDA46AFAE8DCDABBFD5BDABCD51AC6BBEF235153DE5A5248F9657492BDCF7B972AE72AAAAAF8AF68140001F55B265A6BD5BE74FD8D544FF0073D17F2362C6BB2D36AAFBD5E29A82CF49355D6CCFC470C29955C76F82276AAF04361F06F752CEB1BBAFDD4DEE39E38E2807700000000000000000000000000000000000000000000000000000000000003A6A6AA1A3A774D552C70C4DF59F23D1AD4F355E063AD43B71D0F6059235BAA5C2A599CC36F6F5BC7C5DC1A9EF0325822EDF7A4DDCAA1AF669AB253D2A7249EB5EB2B953ECB7089EF53145F7685AAF532CADBC5F6B2481FCE9E27F55163ECB308BEDC81323516D3B49697DE6DDAF74893B7FEEF03FAD9557BB75B9545F3C16C690DB65BB5BEBC6586CD6CA9653AC124AEABA9723557771C9899E79ED54F221A60CC3D1C9BBDB5D7785BA6FEA60129353E93B46AEB2BEDD7EA38EA605E2C55E0F89DFBCC72716AF9112F68DB1BBBE87965ADA1EB2E56155CFA535BF394E9DD2B53927D64E1E44D2C1C1D1A3DAAD7222B5782B55328A9E406B8CA6EF8927F693B00A7B8366B9E866B292B572E92DCABBB0CABFE5AF262F87ABE4468ABA1AAB6D74D4771A79A9AAE076ECB04CC56BD8BDCA8A07CA00005D5A27415EB5DDE7D12CF06208D53D22AE5E11C08BDEBDAABD8D4E2BE09C4BB765DB18B96B6961B95DFADB7E9F45CA498C49549FE5E7927D75F667B25C59AC56ED3B6886DB65A48A928A04C32289B8F355EF55EF5E2A05BDA0B67565D036AEA6D7175B5D23512A6BE54F9D997CFB1BDCD4E1E6BC4EEDA1EAA9B45686ACBED35232ADD4AF8D1607BF711C8E7A3578A22E39975A260C6DB754CEC46FDE1D4AFF00CE601E2E9EE919A46E88C65DD9576799DCD6667591A2FDA6657DE88652B4EA0B55FA952A2CB71A5AE89532AEA7951F8F3C2F0F69AF143B69AA27A3A849E8E79209D9EAC913D58E4F254545036388B92A423B06DBF5C587718B754B940DFD9DC63EB57EFE51DF132B587A4E5BA5EAE3D4964A8A577274F44F4959E7BAEC2FE20486059B60DA8690D4A8D4B55F68DD33933D44AFEAA4F2DD7E17DC5E2D7239A8A8B94502A0000000000000000000000000000000000000181369FB7B4D3D7696CDA4A0A7ABAEA75DDA8AB9D15D144FED635115379C9DAB9C272E3C7019ECF0AF7AC2C1A6E273EFB77A1A2DDFA12CE88F5F26F35F6210B2F7B55D67A818F657DFEAD90BB87534AA90331DD86633ED52CE72ABDEE7B9CAE73B9B9CB955F35E6A04B4BEF492D2F6F456D9A8EBAEB2670D7A33A8897F89DC7F954C577EE915AC2E6E732D8DA2B4C0BC3E659D6C98FB4FCA7B9A861DC0C01EA5E2FB75D4150B35EAE5595AFEC5A899CFC7922AE13D88879688736F6950380000198FA38377B6B33785B26FEB8CC38664E8DDC36B33FF00E592FF005C604BE0001454E0593AF366762D75408DB945D4DC226E20AF85A89247E0BFBCDFAABECC17B918F6D3B62B9B2F171D25616CD411D3AF555956AB8925CA655ACC7AADC2A71E6BE1DA18E6E1B29B851DCEA69A3D43A5246C122B379F798E372E3BDABC5ABDE8BC8C9FB2AD87504AE65EB54555BEEB1C6FF98A4A29D27815C9DB239383BECF2EFCF223861BF49325CBA335D5EF42DDD2B2C75388DEBFDE2924E314E9DCE6F7E392A714027C3234631AD6235AC6A235AD6A61110E6781A27537F6C3455BAF9E872D1FA646AEEA2454556E1551551539A2AA6517BB05C200C73B71FF00723A8BEC45FF00DCC32318E36E2B8D88EA2F18E24FF9CC021200000000E2AD6AFACD4779A17258F5EEA9D38AD4B35F6B608DBCA1749D647F71D94F816E80339D8BA4BDFA8D18CD416AA2B8C6DCE6481CB048BDDDED5F721942C5D21F45DD311DC26AAB54DDA9571659F7D994F7E087780A806C42D3A82D37DA749ACD73A3AD8D7B69A76BFDF85E07A66B820964A69925A79648A56FAB244F5639ABE0A9C4BDECDB60D7363DD4A5BF4F3C4DE5156A24EDF7BBE57C409D00C7DB2EDA2D3ED0B4C2D5756DA7BA523923ADA6455546B978A3DB9FA2EE38EEC2A71C64C809DA05400000000000000000000A1500632DB36BD7689D0B27A0BF72EF72574148EED8F87CB93F851531E2A84295E2F572E555CB95555CE4C8FB66D57FDABDA5D72C522BA82DA9E874B8E4A8D5F96EF6BB3C7B910C72ADC0040000000000000000330747276EED6DE9FBD6D993F99861F32AF47C97ABDB352371FACA3A86A7DD45FC8099A000043FE9136375BB6AADB83635EA6E946C7EFE382BD9962A67B5708D5C789300B535F45625D09769F56D2C55569A681D2CB1BF9E53D5DD5EC767822A76A8102B77C4ECA5A39ABABA9E9292374B51532B62898DE6E73951113DEA74BDE8E95EAC6AB58AE556B557384CF04CF6F0ED332F474ACB241B429A9AE94B1ADD2AA154B7D548B9DC54CABD888BC11CE6F25E786AA76812AEC76B86C9A7EDF6CA6444868A9D9033098CA35319F81E914C1500634DBB4A91EC46FBBCBEBAC0D4F6CCC32598A3A41CCD8B63170477ED2A20627FEE22FE404334ED2A00000000000000000017A6CBF59BF446D0682BDF22A504EEF47AD6762C4E54CAE3BDAB877B17BC9D91BDB2468E6391CD5E4A8B94535BCA4D7D87EA95D4FB2CA15A87EFD75B57D0A7555CAAA33D472F9B15BF103260000000000000000000016AED0F51A694D9E5E2EED762782056C1E32BBE4B3F9950BA88F3D26EFEB1D9EC76285DC6A667554CDFAACF92CFE672AFB008C68E77D25DE776BBB557BD400000000000000000000C8BB10AAF45DB65817FC55962F7C4FF00FA18E8B87435CD967DA2E9DAE9570C82E10ABD73C9AAE46BBE0AA06C0400008CFD24B5BAC93D1E92A1955122C54D76EAF6F1EAD8BE5EB7B5A49835EBAB2B64B96B7BED64B23A574F5F3391EE5CAAA758E444F622227B00F14FA686B67B75C29EB28E458EA69A46CB148DE6C7B5728BEF3E6004FCD03AB69B5AE89A1BCD361B248DDCA88517F552B783DBE59E29E0A85D047AE8B9519B0EA5A7455C47530C9C7EB3153FD048500615E92B51D56CB2961CFEBEE51263BD11AF77E466A23674A0BAB5DFD9CB446EF9C6F5B572277270637FD7EE02380000000000000000000019B3A36EA25A0D7B5D6599E8905D29B7D88BFE2C59727BDAAEF7184CF634ADF1FA6F58DA2EEC5C7A155472BBC599C3D3DAD5727B40D85A2E41D71BD1F1B5CC54731C88AD722F343B100A000000000000000010A76EB7AFD31B61BA31AECC56E6B2919E6D6E5DFCCE727B09A3513B29A9A59E65C451315EF5EE444CAFE06BBAED5F25DAF75D719977A4ADA892773BBD5CE577E607C6000000000000000000005153254013BF65FAA5BABF6716BB9B9D9AB48FA8AA4CF2959F25DEFC67DA5E644BE8E7AC52D1AB27D395726ED25DD37A0CF64ED4E5FC4D4C79B509669C00EB9E66C14D2CCEF56362B97C910D72C932CF34B2BF9C8F73FDEB9360DAAEA3D13455F2A338EA68277FBA3729AF48DBBB1B5BDC888072000120BA2F54AB6F5A9A95178494F049EE73D3F3F89280891D19EA3AADA55CE155FD7DB1CA89E2D958BF9A92D93901520AED5753A6AADA65DABA176F51C2FF0045A6545E0AC8F2994F372B9DED2556D8356A691D9A5C2A229376BEB13D1291139EFBD1515D8FAADDE77B0839802A0000000000000000000051C994545E4A9852A009D3B24BE7E9ED92E9FAB72EF4ACA74A7978FD38D7717DFBB9F697D22E48FBD18EF0B3E98BEDA1EABFDCAA993C69F5646E171FC4C5F79205000000000000000000B276AF74759F64BA8EA98EDD7AD23A163BEB49F213FA88229C3C9097BD242E1E8BB2E82951D85ADB844C54EF6B51CF5FE94221E00A800000000000000000000000EEA5AA9E86B60ABA39562A9A791B2C52B79B1CD5CA2A7B509E9A0F5741AD3445BEF302235F3337678D173D5CADE0F6FBF8A782A29014CC5B01D77FD9CD60EB25C2556DB2F2E6B1AE72F08A74E0C5F04727C95F1DDEE0245ED5AABD13643AA65CE3FD9F2333F6BE4FE6411C135F6ED55E8BB13BDA7F8EB0C3EC595B9F86485200000654E8FB3755B66A28F3C2A29278D7EEEF7FA499A841CD8CD4FA2EDA74DBB3EBCEF8FEF46F4FCC965B4AD631E88D055D74456AD5AB7A9A462FD399C8A8DF627172F82011BB6FFAC56FDB414B552BF7A82C88B0F3E0E9D7F58BECE0DF629880ABE592691D24EF59257AAB9CF5E6E555CAAAF8E4A0000000000000000000000000198FA395D968B6A7250AAE23B8D0C8C44EF7B151E9F04712FD0815B33B8FE8ADAB69AAA55C352B991B97EABD7717FA89E688A807200000000000000A011C3A51D5FF0077D2D468ABF29F3CCA9E48C6A7E2A46C4ED254F487D1377D436FB65DECD4EEAB65B19236A29E26E6446BB0A8F6A7D244C7144E29CF8F122B714554545454E0A8BD8054000000000000000000000000655AE47355515392A734F2000CEDABF68A9AD3A3952C5552EFDE69AE3052D6B3B5F86BDCD931DCE46FBD150C12515CE44C2395133954EF2A8000005CBB3EA8F44DA76989B96EDCA04CF82BD1BF9979EDDF5C7F6A35E3EDB452EF5AACCAE819BABC249B3F38FF001C63753C97BCC531CB2412B2581EE8E58D51CC7B570AD727254F1382AAB9CAAE5CAA81540139000000000000000000000000003B69A77535543511AAA3E195B222A73F92ECFE46C66195B3D3C72B3D591A8E4F6A64D7FE94D1F76D6B7C65B6C94EE91EB8596654F9B8199E2F7AF627C579213EA8A0F45A0A7A7576F7531363DEC7176131903EA0000000000000001C7750B17576C974AEB191F3DC683D1EB9FCEB28D522917CF09877F12297E00229EA2E8D57DA447CBA66E74B728538B61A84EA25F62A65ABEF43135F746EA3D352AB6FB65ADA36A2E1257C4AE8D57C1EDCB7E26C13051CC47355170A8BCD153394035BA8F45E4A8BE4A7242785EF65BA3750AB9F72D3F44B32FEDA06752FCF7EF330A637BCF465B0CD97592F15F40BD8C9D1B3B7CB8E17E204570667BB746ED5D48E55B6555B2E2C4EC6BD617FB9C98FE62C4BAECD7595977D6E1A6EE4D6339C90C3D737DECC816982B235D0C8E8E76AC4F6F36C89BABEE52800000000000000000000006000000000000000001447239C8D45DE7AFD16F1502A0B92D5A0B55DEB0B6CD3D73998BFB45A75637EF3B09F12FDB4F474D655EE45B8BEDD6C8FB52597AD7FB988A9F1030F1455C12A2CDD196C94C8D7DF6F15B5CEFA51C0D6C0CFCDDF1328583675A534D2A3ACF62A28666E313BE3EB24E1F5DD95F8810DB4F6CCF576A8DC759EC952B03F954D4A753163BF79DCFD88A66AD2DD1A69A1962A8D6173754B9138D1D0E58CF257AFCA5F6234912888D4C2721803CCB3586D9A7EDACA1B251414748CE51C2CC657BD579AAF8AE54F45130730000000000000000000000000000000A15007C55969A0B9315972A1A4AB62FD19E16BD3E28A59B71D8DE85B96F75BA768E172FD2A5DE8553EE2A27C0BFC0184AE1D1A749D46F2DBEBAED44E5FA292B656FB9CDCFC4B4ABFA2FD531156D7A9617A7625551AB57DAAD72FE049A0043DAEE8E5AD699CBE8725A6B53FCBA9562AFB1CD4FC4B72B3635AFA897E734DD4CA9DF4F2C727E0E27260A81AFBAAD15AA28BFED7A72F10F8BE8A4C7BD10F1E6A3AAA67E2AA96787FE2C4E6FE286C70E2E635ED56BD11CD5EC54CA01ADEDF627ACE441BF1FF0088DF629B129AC96CA8CFA45BA8A5CF3EB29D8BF91F13B4769C913E7AC16993BD5D451AAAFF00281AFBDF62F2721C55C89C950D812684D269FF00866CDFFC18FF00FC9CDBA2B4C317E4E9DB3A7950C7FF004035F5D633F7DBEF2AD735CBF25CD5F253616DD2F626E776CB6C4CF75247FF0043ED86DB454E89D45253458E5D5C4D4C7C00D77C3455950EC53D1554BFF0E073BF043D7A6D17AA2B71E89A6EF32F8B6864C7BF06C091A885700418A5D8F6BEAC54EAB4CD5B117B677C71FF0053B25C145D1E75CD4B912A22B652E79F5B59BCBFCAD5263FB40117683A2FDD9EF4FD27A8A861C734A7A57C9F172B7F02EAB77465D3F0E3F495E2E752A9CDB1232245FE555F899E0600C6B6DD86682B6E152CA954F4FA75733E4F8671F02F4B669AB3599B8B4DAA868D13827A353318A9ED443D6C04E005400050A80000000000000000007FFFD9)
INSERT [dbo].[Пользователи] ([Код], [Сотрудник], [Логин], [Пароль], [Фото]) VALUES (3, 103, N'fedorov@namecomp.ru', N'8ntwUp', 0xFFD8FFE000104A46494600010100000100010000FFDB0043000504040504030505040506060506080E0908070708110C0D0A0E141115141311131316181F1B16171E1713131B251C1E2021232323151A26292622291F222322FFDB00430106060608070810090910221613162222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222FFC0001108014000DE03012200021101031101FFC4001C0001000203010101000000000000000000000607010305020408FFC400471000020102030405080900060B0100000000010203040506111221315113144171D107223253618192A115234252549193B1C12533354362E11624346372738283B2C2F0F1FFC40014010100000000000000000000000000000000FFC40014110100000000000000000000000000000000FFDA000C03010002110311003F00FD4C0001A4790D23C8001A4790D23C8001A4790D23C8001A4790D23C8001A4790D23C8F352AC29436AA4D462B8B96E49116C4F3DE1D63370B684EEE6B8F46D28FE604AF48F21A479155DCE7CC5ABEEA2A8DBC7FC31D5FCCE64F33E3739B97D255A3AF6474480B9F48F21A47915359677C62D64BA6AB1B8876C6A477FE64C70CCE786DDC62AE2AAB5AFAA4E151EEF730251A4790D23C8F34EA42AC14E94E338BE0E2F547A01A4790D23C8001A4790D23C8001A4790D23C8001A4790D23C8001A4790D23C800000000000000000007271CC6ED704B4556E9B729EBB14E3C64D7FF00A756525083949E915C5F2452D8EE273C5B19AF70E4FA3DAD9A51EC8C501EF17CC37B8CD593AF3E8E86BE6D0A6F48AEFE67192D19ED2D0C818320000001DACBD986E306BB5B52954B59FF005949BDC9735C996F50AD4EE2842B50929D2A8938C976A2872C5F27B89F4B86D6C3EACB59DBBDA86BF75F1F9FEE04DC04D3E0C0000000000000000000000000000000001C8CCD79D472C5F56FB4E9EC47BDEE453459FE502ACA19729C23BBA4AF15AF76ACABD0190000000000003B195AF7A8E67B4939690AADD292E69EEFDF438E23274EA42A45E92A72524D7B1EA05F14BB4D86AB79EDD18CB4D36A2A5F9A36800000000000000000000000000000000109F288FF00A2EC973ACFF62B85B8B1BCA32FE8CB27CAB3FF00C4AE501900000000000030FD1664D96B6F2BBC42DADE11DA756A28E9ECED02EEC3BFB2ED3FE4C3F647D462294629456892D123200000000000000000000000000000000056BE50EE76F16B5B6D7752A5B4D7B5B7FC244317692BCFD4E51CC91A8FD1A9423A7BB5228BB40C80000000000012EC8161D67199DE349D3B686EFF0089EA91112CDC856BD1E5E957D3FDA2AB6BB96EF1025EB800000000000000000000000000000000000082F946B6DAB5B2BB8ADF4E4E9B7EC7BFF82BB4FD85DF8CE190C5B09AD695345B6B58C9FD992DE994DDFD857C36FEADADD41C2A537A7B1AE6BD807CC0000000000005C7962DFAB657C3A9A5A47A152F7BDFFC94F52A72AD714E943D2A92515DED97B5BD2542D69528A4A34E2A292F62D00D800000000000000000000000000000000000055FE502946198694D719D05AFB9B2CEA9561468D4A9565B30A717293E4971213E5030D8DC619658D5A56E9EDD4762A4E3C346DB8BEEE2BF202BB00000000000120C9F87BBECC945CA3AD2B75D2C9F2D387CCB7089E48C2DD8609D66B2FAEBA7B5FF004F612C4000000000000000000000000000000000003998C6396782DABAB75516DB5E6524FCE9303979CB165638056A516957B94E9C16BD9DAC8765ACCBF46C2B61D8A2773835D6EAB4A5BFA34F8B472716C5AE318BF9DC5CBD13DD0827BA0B91F081D2C7305A9825E2829AAF67556DDBDCC7D1A90ECF79CC4F524381E3143ABCB08C775A985577E6B4B7D09FDE8F25CD1EB1CC9B7F833E9A9E97587C96D53B8A5BF77B57677F0023A00004B72DE519E214A85F5ECA30B672DA54F8B9A4F7FB9E8448B7F2AA92CAD87ED474FAADDDDAB03B518AD9492492DC92EC3DADC22F71E80F200000000000000000000000000007CF737B42D2DE75AE6A429C23F6A72D111DCC79BA8E14E56D6D1E9EEE3BDAD7CC83F695A6238A5E62971D2DE5694DA5A28F08C57B170026D8E67D8F9D4707A6E4FD7D48EEF7220756E2B5D56955B8A92A9525C6526785C37803D0000F325A93EC899C3E8F71C2B159EDD954F369D49EF54DBE09FF0085FC881802E1CC3E4EEC7138CEEB0B7D56E65BDC17F5727DDF67DC553896157B83DC743885BCA954EC7C632EE7DA58DE4FB3829429E0D8AD5F3BD1B5AB37BDAFB8DFECCB0EFB0CB4C4AD256F7D429D6A52FB338EBA7801F9C6CAD6ADFDFD0B5A11D6A569A82F7BD0BEAEADEDB0CB3B5A6EA429C125460A4F4DA697EFB8E161F9270FCBD9A69E252BA8AB7DEA8D2AAD2719BDCB47DBB9BF69E7CAA537532B5B497A30BB8B7F0C901DA52D4F5A94F6139C312C312A7524AEADD7D8ABC7E2E24DF0FCED855EC12AD51DB54ED8D4F47E202520D342BD3AF0DAA552335CE32D51B40C80000000000000000000114CE5982585DA42D6CDE97B709B52F571E7DFA926B8AF1B6B6A95AA6EA74E2E527C92290C47129E2589DC5DD5F4AACB54B92EC5F901F3394A5AB9B72937AB6F8B3065190000000000000116E324E2DA69EA9AEC2E8C899BE18DD9754BEA8BE91A11DFFEF6297A5DFCCA5CD9657771875FD1BBB39EC57A325284BF8EE0255E51B179DFE699DBD39C952B35B0927F6F8B7FB1DCBEC49E60F24356ACA49DC59CE0AAFB5C5F1F7A656F5AB54B8B8AB5AB34EA559B9C9AE6D9D6C1319587D9623655E329DADF509424A3C632D3CD7FFDCC0E29E8F27A037DB5E5CD954E92D2BD4A33E707A6BDE4CB06CF93538D2C6629C783B8A71E1DE883002FAA55615A946A52929424B5524F733D15065DCC95706B88D3AADCECA72D251FBBED45B56D5E9DCDBC2AD19A9D39AD6325DA80DA00000000000000022D9EEFBAA65A9538BD2773354D77717F24552A3A3277E516BED5E585B27E6460EA4A3EDD74FE083EA060C800000000000000000000000000000063427390F1974EB4F0CAD26E324E74B57C1F6A5ECED20E6DB5B99D9DF5BDCD36D4A8CD4B77CFE405EE0C45ED4149706B54640000000000000AAB3DD4E9334CA3A69B1460BBF8B2307633555955CE188B97D9928AEE491C700000000000000000000000000000000007997A2CF461AD40BC309B88DC60B67561E8CA8C1AFC91F6912C838875AC0256CF5DAB49ECEFFBAF7AFE496800000000000D75EA7456F567AE9B306F5EE5A8148E275235B1ABDAB17AEDD593D79AD4F94396DCE527F69EBA000000000000000000000000000000000000003AB97717FA1F168D59B7D5EA799552FBBCFDC5C74E71A94A15294B6A9CE2A49AEDD4A1B425994F343C32B42CAFEA4BA8C9F9B27BFA3FF202D10798548CE0A706A5092D5497067A0000007CD887F665D3E54A4FE4CFA4F338A9D39425BD4968C0A061AE86C3A18EE18F09C76E6D74FAB4D4A9C9F6C5F039E0000000000000000000000000001A49FA3172EE000C0032000061F0320093E5BCDB570C6AD6FB6AAD8EBB9ADEE977735EC2CBB2BFB6BEB58D6B4AF0AD4E5C1C1F0EF5D8CA316E3EBC3F11B9C2EED57B2AAE12FB51FB325C9AED02F240E265EC76963564E515B15A9E9D253D786BC1F76E3B60000040BCA258799697D05B9374EA68BBDA7FB9002EACC163F4865FBBB74939B839435EC92DEBF6295000000000000000000000000004B72CE74FA0A8C2DABD8D0AB6E9EB29423A546B5E2F9E8448C6805B78B65BC2737E0AF11C03A38DDC93716A3B2A72FBB25CFDA549284A9D59539A6A707A4A2FB1935F26F8C4EC7322B294FF00D5EF56CB8BEC9A4DA6BF26BDE3CA3E0B1C3F3046F68C76695FEF924B7748BD2FCD6F0216000000000003A997B1196198EDB56D7EAA5250A8B9C597494170E05DF83DC75AC16D2B6BAF494A2DBF6E807DA00032CA4F1DB278763D796FFDDA9B9537CE2F797695CF943B3D8BAB4BC8A4A338BA727DDBD7EEC08380000000000000000000000018327D985D9D0BEBF8D0BABDA7674E5C6B4E2DE9F901D9C8387D6BCCE967529A7B16D2E9673D3724B725EF6CB433F614F12C9D74E9C76AB5AFD7C39BD38AFCB53EDCB78361982E1B18612A152151272AFB4A52A9ED6D7C9761D9AD08D5A13A535AC6A45C5AF63E207E6407D1885A4AC317BDB4A9BA542B4A1EE4F77C8F9C00000000016DE4EB8DBCA768B5DAE8F587768CA90B3B223D72C69CABCFF8025C0003D1C0CDD60EFB2C5D4611D67492AB17CB677BF96A77CF1520A74DC64B58C968D0141A7A993E8BEB6EA7895D5BBFEEAA35F33E700000000000000000000000003EEC3719C4307AAA7875D55A3A3D5C54BCD7DEB813DC23CAA35A4319B54D2D35AB416FEFD0AD5AD4F3A01DFCE777637F99277D85D6855A1734E32969AEB1969A34FDBB91C05DA340B7019000000002CDC891D32C27F7AB4DFBB52B249CA4A304E526F44976974E0760B0EC0AD2D5E9B54E1E769CDEF6074C00000005439C287419B2EB769D24613F7B5FE47049679408ECE65A2F5D76EDD3F9B229A01800000000000000000000000000000001D6C2B2F5EE3342B55B254F6294B65B9CB4D59F7FFA0D8D69FD5D07DD55130C9387CECB2DD27562E352BC9D469AD38F0F912902A78645C6A5AFD5D05A73AA8FAE8F93DBF969D35CDBC39A5AC9966ADC634023183E4DB3C26E15CCA72AF70B84A69691F6A5CC91451B8F3A000000000159F9435B38EDAB7C7A0FFD99104F5257E502A39E63A4A5F6682F9B644D768000000000000000000000000000004A529A8C62E527C12DEDBE44CF01C9B2A93A7738BC5429F18D17C5F7F8116C32EE5638C5A5CC5E9D1D45AF737A32EC4B701EE8A4A3B968B8248DA788AD227B03C80000000034F5BA1DB5E92FFB8BC475BB6FC451FD45E206E069EB76DF88A3FA8BC475BB6FC451FD45E205539D2AF4D9AAE37EBD1C6307DE97F991E5B8FAB18C468DEE377975D353D9AB55ECB735BD2DCBB4F8BA7A3EBE97EA2F1036035F4F47D753F8D788EB147D753F8D7881B01AFAC51F5D4FE35E23AC51F5D4FE35E206C06BEB147D753F8D788EB147D753F8D7881B01AFAC51F5D4FE35E23AC51F5D4FE35E206C06BEB147D753F8D788EB147D753F8D7881B01AFAC51F5D4FE35E23AC51F5D4FE35E206C06BEB147D753F8D788EB147D753F8D7881ECBB303BAEBB80DA57FBF4D6BDEB73FD8A43AC51F5D4FE35E259F90B14A13CB8E84EBD253B7AAD3D6A2E0F7F3EF02620D3D6EDBF1147F51788EB76DF88A3FA8BC40DC0D3D6EDBF1147F51788EB76DF88A3FA8BC40DC0D3D6EDBF1147F51788EB76DF88A3FA8BC40FFD9)
INSERT [dbo].[Пользователи] ([Код], [Сотрудник], [Логин], [Пароль], [Фото]) VALUES (4, 104, N'mironov@namecomp.ru', N'YOyhfR', 0xFFD8FFE000104A46494600010100000100010000FFDB0043000504040504030505040506060506080E0908070708110C0D0A0E141115141311131316181F1B16171E1713131B251C1E2021232323151A26292622291F222322FFDB00430106060608070810090910221613162222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222FFC00011080140014003012200021101031101FFC4001D000100010501010100000000000000000000080103040507060209FFC40042100002020102030603030A040407000000000102030405110607311221415161711322813291A1081423424352627292B1333482C153B2D1D215162473A2C2F0FFC400160101010100000000000000000000000000000102FFC40017110101010100000000000000000000000000013111FFDA000C03010002110311003F0099600000000000000000000016ADC8AE9DFB72EFF202E83596EA5269AAA3D97FBCFBCC2B2C9DB2DE726C0DC59994D7BEF34DF923127AA77ED0AD7BB66BB61B019966A17496D16A3EC8B1F9D5D26DBB245B29B015EFF1949FD40000AC6725BED26BD994007DC722E8EFD9B24B72EC750C88EFBCA32F7898EBB801B186A6BBFE243DBBCC8AF369B25B2924FF008BB8D305DC07A25B35E0576479FAED9D52DE12699994EA2FA5CBEA80DA6C86C59A722BB96F5C93F4F12F000000000000000000000000000000000000002DDB74298EF37B792F33172B3E352EC57F34DF8AE88D64AC958F79BDD81977EA13B16D52F86BCFAB305B6DEF26DBF365400000000000000000000000000000000005BC5EE9ECFD0CEC7D4250EEB7E65E6608037F5DD0B63BC1EE5C479E8CE5096F16D3F43658D9D19ED0B7E597837D1819E00000000000000000000000001F339A847793497AB02B292845CA4F648D5656A0EC5D9A1ECBC64BA96B332A5912705F2C1745E2CC503E800000000000000001632F2F1F0712CC9CDBEAC7C7A96F3B6E9A8C62BD5B39B6B5CEFE1AD3ED955A6472753B13DBB75C7E1D6DFF0034BAFD101D4011FF0033F280D4A6DAC2D0F0EB8AE8ADBA737F86C61AE7DF1035F3699A53FF004D9FF7012301C170B9FD93196D9FA15125E78F90E1F834CF69A3739B857544A1977DFA6DCFF572EBDA3FD49B5F7EC0746059C6CBA33288DD897557D335BC6DAA6A5197B345E00000000000000000333173654C7B367CCBCCDBA69A4D74679C323172A544FBDB707D501BB07CC271B20A517BA3E800000000000000000A36A316DF446932B29DF3697D8F22EE6E5BB272AEB7F2AEAFCCC103E80000000000000000F0FC73CC8D33836B746DF9E6AB35BC31212DB65FBD37FAABF17F89A8E657342AE19A6CD2F4495776B538FCF635DA8E227E2FCE7E4BC3AB23664E45B9593664655B65D916C9CACB6C976A537E6DF988373C49C59AC714E77C7D633256C17D8C75DD557FCB1E8BDFBDFA9A147D0F16567400799545DC014F12236BA2F106ABC3F99F9C68DA864624F7DDAAA5B465EF1E8FEA8EE3C0DCE8A356BEBD3F8AA356265CF68D7975ADAAB1F9497EA37E7D3D88F6BC46C165EA72038C725F8EAECF5FF96B56B9D97515B9E1DB2EF72847ED41BF45DEBD13F24768D88AA0000000000000000C9C5C974CB67DF07D51B88CD496EBA1E78CDC2CAF86FB163F95F47E406D804F700000000000C2CEC97543B15BDAC92DF7F2464DD6AA6B7397448D04A4EDB65393DDB00000000000000000073BE68F3023C23A3AC4D3E717ADE627F0BC7E043A3B1FAF847D7D8F73A96A14695A664E7664FB18F8D54ACB25E492DC871C47AFE4F12F11E6EA99ADBB3227BA8EFDD08F48C17A25FEE06B6DB6CBEE9DB74E53B26FB52949EEE527D5B7E2D943E373ECD633A14417895228000000000002ED375B8F910BB1EDB2ABAB7BC6CAE4E325ECD1D6B8079BF9B819B5E0715E4D995813DA30CCB1EF650FA6F27FAD0EFF001EF5D7D0E445009C75D91B6B8D954A33AE6BB509C5EEA49F469F8AD8FB387724B8D6CB5CB86353BBB4E29CF02537E0BBE556FF007B5F5477122BE40000000000000006D70727B70EC4BED4575F4339779E761275DB19C5F7A37B4DAADAD4A3D1AFC40BA0000016B22C5554E6FBF6E8BD40D66A17FC4BBB117F2C7A98B1F128F7949B6FBD955E2050000000000000000723E7AEB92C4E15C3D1E99353D4EEED5ABC7E1D7DED7D64E2476EC9D379E19F2C9E632C55F670B12B82EFFD696F397F747322C4A14F1654000000000000000000000195A7EA191A56A98B9D85370C8C5B636D725E124F75FF004FA932B42D669D7B87F0354C6DBE1E6531B12DFECB7D57D1A68859B6E483E436B12CAE19D4B4AB1FCF8372B6B5B7ECE7BEFF00FCA2FEF03B08008A00000000000019D8177666EB6FBA5D3DCC13EA2DA7BAF003D02F12A5AA2D56D2A5E3E25D006B352B53946B4FA77B36679EB67F12F9CFCD81F20000000000000000000226734E52B39ADAF76BF52E8C57B2844F1A7B7E6C552A39ADAD7697F8B2AED5ECEB8FFD0F129EE567540005000000000000000000007D1D37919992C7E62598DBFCB978762DBCDC5A92FECCE647B8E524DC39B1A3765EDDAF8A9FB7C29012AC004500000000000000006C34EB7694AB7E3D0D99E7EB9FC3BA13FDD7B9BF8C94A2A4BA3031F36CF8789369ECDAD91A5363A9D89A8D6BED7566B80000000000000000000008EDCF8D2D63F17E9FA9476EC6662FC394BF8E127DDFD3247245E249EE72E82F57E5FDD97447B593A5CBF388FAC3A4D7DCF7FF00491814B72A0000000000000000000000003E8E87C97C3964F3471AC4B78E2E35D63FE9ECAFF98E78776E4068B38616ADAD5B05B5F28E2D726BAA8ED29FD37715F403B6800CA80028000000000000FA371876A9E3476EABB99A733B4D96CA71DBC80B19CDCB2E5BF8248C62F643ED64D8FF0088B5B014000000000000000000011D3993CCAD75F18EA3A569597660E0E0CDE3CA108ADEE7B7CCE7BA7BA7BB49797B9C992D91D1B9D3810C4E665D7D71ECACDC6AAE97F36CE2FF00E539D151F2000000000000000000000003E8F5DC2BCC4D7B866DC3AB1F2DDDA6E34BBF02718FC3941BDE4BA6E9F8EFBF53C89BAE10D3E1AA71D687856C7B50BF32B8C979AED26D7E004C6ADAB2A8CE2F78CD292DFAECD6E7D954548AF90000000000000001F464E03DB2D2F34D18C7DE33ECE556FF0089016BC5BF37B8000000000000000000000008EBCFAC79438CB4BBB7F92DC1ECAF78CE5BFF007392AF1251F35783A7C53C26EDC0876F53D3BB575104B7F891DBE687BBEABD52F322DC5F7150000000000000000000000001F47AEE58D52BB9A7A0763F6790EC7ED1849B3C89DDB91FC1D3C7A6CE27D42B7177C6556145F570DF6959ECF6D97A6FE6076D0011400000000000000001E29F93DC00003FB72F47B0000000000000000000000046BE71F054742D7A1ACE041434FD4E6FE2463D2BBFAB5E8A5D7DFB4494355C45A0E1F12F0F65695A8C5BA3223B76A3F6A125DF1947D53EF0217AEE0745E2FE536A3C23C3B91AB5F9F8F954537460D550945F665BA537BF4EFD96DDFD7A9CE8A80000000000000000007B1E0AE5FE771BC33E583934E3C713B094AE4DC67296EF6DD74D92DC0B3CBFE13B38C78B29C2926B029FD36658BBB6AD3E9BF8393EE5EFBF812DA9A2BC7C7AE9A211AEAAA2A108456CA292D925F43CAF01703E3704E80F16138DF977B53C9BD47B2A72F0497845787D5F89EB89A0000A000000000000000000177C92F3605CBD7672AE5FC4D96CC9CE5D9CC97AC5331D014000000000000000000000001E5F9878FF009CF2CB88AA6B7FFD14E697AC7E65FD88829F526EEA1830D4B4ACCC2B7FC3CAA274CBFD516BFDC851938B661E65F8D7AECDD44DD738BF069ECD7DE996545A0000000000000000248F2231BE172FB2AF6BE7BF3ECED3F3ECC6088DDE04B5E59E933D1796BA463DB070B6DADE4D89F84AC7DADBEE71168F600022E0000000000000000000005CC78F6B2EA5EA5B32B023BE645FEEA6C0BDA9C1FE8E4BA77A6602F1373995FC4C49ADB76BBD1A64B6028000000000000000000000002ABC489DCD6C38E1734F598416D1BA50BD2F59C537F8EEFEA4B15E2460E76C7E1F346EEFDFB5894CBF0607380015000000000000193A6627E7DADE062BEF8E464D75497A4A49326D6CA1B5715B462B68AF24BA221BF0743E2F1EE815B7B2967D3BFF005A26425BB6FC5907D00028000000000000000000006C34D4BF492F65FDCD79BAC1ABE1E1C13EAD6EC0BFD534FC4D15D0755D283EFDBC4DF1ACD46BDA4AD4BAF73030000000000000000000000000557891779D5746FE69E528FEC71A9AE5EFD9DFFDD1DE78C38E74BE0CD39D99D356E6CD7E830EB92EDD9EBFC31FE27F8913B59D57235BD733352CD92791976BB27B745BF82F44B65F4096B0C00540001400000001BAE12C8862F1C6857DAF68579D4B93F4EDA26535D9935E441BDDC5A717B493DD3F2649EE5E73370F8A71A8D3F50B2346B508A8B8CBBA390D7EB41F9BF18F5F2DC0E8E0022800000000000000000003EEAADDB64611EACF4096CB646AB4CABB5395AD772EE46D40A16AEA95D44E0FAB5DDEE5D0079DD9C5B4FAA06767D1D89FC48F497530400000000003E2CB614D53B6E9C2BAA0B794E72ECA8AF56FB8F03AF737F85B45F895E3E54B52CA87ECB0D76A3BF939BDA3FDC0E827C596574D52B2E9C2BAE3D65396C97D48E1AE73CF5FCEEDD7A36362E975CBBBE228FC6B76FE69777E0739D4B58D4B57B9D9AAEA1959736F7DEFB5C92F65D10129F57E67709E8DDA57EAF55F6C7F65869DD2FC3B97D59CBF8979EB9B951B71F86705615727FE6725A9D9B7A457CB1FC4E349752A591255DCBCAC8CECCB72B36FB2FC9BA5DAB2DB65DA949FAB2C950000000000000000000AC5B8C934DA6BBD35E0FCFDCA003A8F0AF3A35BD12AAF135584754C48F729593ECDD15FCDD25FEA5F53AC68DCDEE13D5EB87C4CE9605EDECEBCD8382DFD25DF1FC48AFB0026EE266E36752ACC3C8A2FADADD4E9B54E2FEA8C920F636665606446EC1C9BB1ED8FEBD36383FBD33A0687CE9E29D2A4A39D755AA5296CD65C7E7DBF9D6CFEFDC8A9420E5BA073BB87B53EC57AAC2FD2EF978DABE257FD51E9F54749C3CFC4D471D5FA7E553934496EACA6C538BFB9817C0000000024DB492DDB06660D3DA9BB24BBA3D3DC0D9D152AA88C51702FB280000016EEAD5B5384BC7C4D14E0E13719754CF4260E6E3AB20E70FB715BEDE606A806F638BF33B9AF95A3EA56E89C312857954ECB2732515275C9AFB114FBB749ADDBF3F403A8EB9C4BA3F0E62FC7D6B50A31A0D6F18C9FCF3F48C7AB38FF0010F3E65353AB8634E496FB4727356EDFAA827FDDFD0E2D999B93A8E54F273F22DC8C89BDE56DB37294BDDB2CAF1092F5B7D6789B5AE22BDDBADEA59196F7DD4272DAB5ED05DCBEE351B1529B9AC4C5400400005000000000000000000000000000000005363374DD573F47CB593A566DF897AFDA533717F5F07F5DCC300760E1EE79EAB88E15F11E257A8D31EE77529576FBB5F665F81D838738EB40E28A63FF0084E745E4B5DF896FC96AFF004BEBEEB7444015CA755919D53942717BC6517B34FD1813910239F01F38B51D3B3F1F038A321E5E9939282C9B7FC5A37FD672FD78F9A7BBF1246C5A94534D34FC5114845CE6A2BAB379456AAA9457818D818DD8AFE258BE69745E48CE02A0000000000034BAA551C5AACC8DBF47084A72FA2DC82D959966767E4E56449CADC8B656CE4DF5949EEC9FF7535DF4CEAB63DA84E2E324FC535B321F734796793C0DAB3C8C28597687933FD05BD5D4DFECE7EA9747E2BD441CF0A789529E25A8A80000000000000000000000000000000000000000000000000023E76EE265F2C2DB356E5CE859B92FB7378B184A4FAC9C1B86FEBF648F3CB0E5A6471CEA92BB2D4EAD0B167FA7BA3D6D7FF0E0FCFCDF87B92F70F0F1F4FC1A7130698518D44142BAAB5B46315D124456400028000000000000616A9A6626B1A6DF81A9515E461E441C2DAAC8EEA4999A00877CC9E57E67036A13C9C6F8993A0DD37F06F7DF2A9FEE4FD7C9F47EE73B27FE6E163EA1856E2E6D35DF8F745C6CAAC8A9464BC9A6462E66725F2F879DDAAF0B57665E91DF2B31BED5B8CBD3C6505E7D578EEBBCA9675C74000000000000000000000000000000000000000000000000E85CB4E5966F1CE7AC9BFE26368544F6BB29773B1AEB0AFCDF9CBA2F737BCB4E4C65712FC0D5789A166268DDD3863BF96DC9FF00B61EBD5F86CBBC94185858FA760D589834D746353150AEAAE3D98C52F0485A2D695A561E8BA563E06994428C4C7828575C17725FFEEFDCCD1B0D88AA800000000000000000000000E35CC2E4860F105976A7C2EEAD3B5596F2B296B6A721FAFEEC9F9AEEF35E246DD6744D4787F54B30359C4B7172ABEB0B1755E69F46BD5364F734BC45C2DA3F14E9CF0F5DC1AB26AEFEC4A4B69D6FCE325DF17EC04110765E32E42EAFA3BB32B85E72D570F76DD12DA37C1787A4FE9B3F4671EBA9BB1AE9D39354E9BEB7B4EAB22E328BF269F42A2D8000000000000000000000000000000003EE9A6DC8C8AE8C6AE76DF63DA15C1394A4FD12EF6760E0CE436AFABBAF2B8A2C7A4E13EF546C9E44D7B77A878F5DDFA01CAF48D1F50D7B53AF0347C3BB2F2ECFB35D51DFEADF44BD5F71247979C8DC1D05D3A8F14FC2D43548ED2851B76A8A5F5E8FEDC979BEEF25E274CE1DE15D238574C585A161578D4F776E4BBE763F3949F7C9FB9BB4494360371E2054001400000000000000000000000000003CCF1370270F716D2E3AE69D55D6A5B47220BB16C3DA6BBFE9D0F4C008D5C4DF93C6A144ACBF8575086657D563667C962F4534BB32FAA4721D6786B5AE1EBDD5AE69993853DF652B60FB12F69747F46C9E7B16AFC7AF26A9557D70B2A92DA509C54A2FDD3EA07E7E02636B5C9BE0CD6A529D9A5AC3BE4F776E0CDD4FFA7ECFE073CD57F26E7F34B45E206F77F2C3371F7697976E2FFD8A88F80E9BA8722B8DB0A52FCDF0F133A0BF5B1B262B7FA4FB2CF3397CBEE2CC0EFCAE1DD52315D5C31DCD2FAC7740798065DFA66762EFF9D616553B7FC5A251FEE8C5D80A02BB1918FA767E57F97C1CAB7FF6A994BFB203181E97138038B737FCAF0DEA92FE7C7705F7CB647A7D3F917C6D9AE2EEC2C5C283EAF27263BAFA47B4C0E660903A57E4DEE5B3D6F5ED978D7874FF00F697FD0E89A1726B83743942C8E98B36F8BDD5B9F376BFB9FCBF80B444ED1B86F58E21C8F83A1E99959D2DF672A6B6E31F793EE5F5675EE19FC9DF51C870BB8AB50861D7BEEF1B0F6B2C6BC9CDFCB17ECA4490A71E9C6A214E3555D3543BA30AE2A315EC917483CD70D702F0FF000950A3A169F5516EDB4B224BB76CFDE6FBFE9D0F4B15DC178802A020140000000000000001FFD9)
INSERT [dbo].[Пользователи] ([Код], [Сотрудник], [Логин], [Пароль], [Фото]) VALUES (5, 105, N'shiryev@namecomp.ru', N'RSbvHv', 0xFFD8FFE000104A46494600010100000100010000FFDB0043000504040504030505040506060506080E0908070708110C0D0A0E141115141311131316181F1B16171E1713131B251C1E2021232323151A26292622291F222322FFDB00430106060608070810090910221613162222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222FFC00011080140014003012200021101031101FFC4001C0001000202030100000000000000000000000607010802040503FFC4004A100001030201070904040B06070000000000010203040511060712213141D21317225154617181931491A1C1324292B115234352537282A2B2D1E12425263644C2333562647374F0FFC40017010101010100000000000000000000000000010203FFC4001A110101010101010100000000000000000000011102311241FFDA000C03010002110311003F00DCB0000000000000000000000000000000000E956DDA82DD1ABEBEAE0A76A7E95E8DC7C31DA077410CAACE764CD37D1AC927FF00C30B953DEA88874F9DBC9FFD15C3D16F10C13F044EDF9C4C9CB8C891C75E90CAABF42A5AB1FC5757C494453473C69242F6491BB63D8EC517CC0FA0000000000000000000000000000000000000000000000000000000000000078B7CCA8B5E4EC4C75D2A5237BD31644D4D27BBC1135E1DE07B47857FCACB5E4E41A5719FF1CE4E853C7AE47F826E4EF5C1087DDB3B541F82A6FC0D4F50B5AA9846EA862231AABBD75EBC3A8A7EAAAA7AEAC96AAB267CD512AE2F91EB8AA964130BF6736F3747BA2A1FEEEA4D88D897F18E4EF76EF2C085CB2C93CCE96691F248EDAF7B95CABE2AA6153133A3DE6E44D710017134443B74371ACB73F4ADF55514CEC7F252AB517C5379D54DE1350C2A736DCE95FA8DC8956B0D745B30959A2EFB4DC3EE526F68CEB59EB1523B94735048BF59C9CA33ED26B4F342904DE871337956D5D1D75357D3367A29E39E176C923723917DC760D5AB65DABECF55ED16CA97D3C9AB1D15D4EEE54D8A9E25BF9279CCA7BA4ACA3BDB5B4956FC393953FE1C9DCBF9ABEF4EF3362AC600100000000000000000000000000000000000000000000000007977FBD4360B0D55C6A3073606F4598E1A6E5D48DF3535AEE771AABBDCE6AEAF9564A8997172AEC4EA444DC89D458B9DDBD24B5B476885CAA90A72F360BAB15C51A9E498AF995821BE625AC000D6000000000000000000000B87365966FAAC2C775974A7633FB2CAFDAF6A7D455DEA89B3BB1EA2D245C4D51A6A99A8AAE1A9A591639E17A3E37A6E726C53653262FB0E515861AF830473BA32B31FA0F4DA9F3F05439D8AF68004000000000000000000000000000000000000000003E73CF1D353C934EE46451355EF72EC4444C554FA105CE95D5D4191CB4F13B096BDFC8EADBA3B5DF04C3CC4149DEAE525E2F9595F32AABE7915C98EE6FD54F24C10E8A6F33F5941D6200000000000000000000000004E7369946B68CA16D04EE44A2AEC198AFD593EAAF9ECF775106328AAD5C51705425836C50C9E1E495D5D79C93A0AE957F1B2468927EB2745DF1453DC39A8000000000000000000000000000000000000000053F9E491CB5567663D16C72B913BD55A9F22E0DC54F9E3A75F66B3D426C6BE48D7CD1AA9FC2A582A4001D1000000000000000000000000000017C66AA574990AD477D4A991A9E18E3F32749BC80E6957FC152A61B2B24FB9A4FCE7D7AA000800000000000000000000000000000000000004133AD4BCBE42BA44DB4F511C9E4AAADFF713B23F96D07B46425E6344C57D99CE4F14D7F2035B00075F50000000000000000000000000000179E697FC993FFEE3FEE6960104CD447A3908D76E7D4CAA9EFC3E44ECE7D7AA0008000000000000000000000000000000000000079F7B83DA727EE10618F2B4D2370EF56AA1E81F0ACA98A8E8A7A8AA5D182262BE4775226D035490C9CA7746FAA99D4E8E481CF558DAE4C151AAAB822F91C50EB10000000000000000000000000000A361B36D0A439BBB668FD76BDFEF7B89691FC8B6322C86B3B62735ED4A6662E6ECC77FC712407250000000000000000000000000000000000000000089E71DEE666F2E7A2BF4D18C5F057B5149611ECB6A7F6AC86BC46898B929DCF4F16F4BE406B6800EA80000000000000000000000000000BD734F23A4C8756BD7148AA5EC6E3B93045FBD549F26A2139AFA7E472069DF861CBCD24987ED2A7C89AA6F39DF55900100000000000000000000000000000000000000EBD753A55DBEA69D7F2D1399EF4543B000D4B56398F731E9839AAA8BE29B4C9EB65552FB0E58DDE9D1306B2A5CE6A752397493E0A87928769E20002000000000000000000000007D29E175455C3033E9CD23589E2AA89F30363F23293D8F222D112EDF666B97C5C9A5F32409A8F9C11360A78E26222358D46A227522607D0E56A80000000000000000000000000000000000000000000288CEB5B9D4B95ECABDACAC81174937B9BD15F8689024DE6C6E5A64C33296C2B0B15ADAC8155F4EF76C45DE8BDCA6BCD551D45055C94D5B0BE0A88D70746F4C153F9A779BE6E23E2003400000000000000000000049F202DFF8432F2DCC56E2C81CB3BD7A91A9ABE3811B8A27CD2B6389AAF7B9706B5A8AAAABD4889B4BD7375923264FDB65AAB8B11B71AB44D26638AC4CDCDF1DEBEEDC4B44EC0073500000000000000000000000000000000000000000000082674ADF1CF913354B636ACD4B2B2447E8EB46E382A63D5AC9D9E0E58D3FB5644DE22C31C695EE44EF44C7E45835A800748800000000000000000000B5B339471BD2EB59231AAF63A38E372A262DD4E55C1776D42DC2BFCD35272191B24DDA2A9EE45EE4446FC94B00E77D190011400000000000000000000000000000000000000000000384B1B6685F1C888E63D151C8BBD0E675EB6B20A0A29AAAAE448E0858AF7BD772201AD17EB44B60BF555BA66AA722EE83BF3D8BF4553CBE679A8B8922CB0CAB7E54DDD25485915353A2B604C3A6AD5DEE5F2D9B135F791D6EF3A4A8E200280000000000001CA28A49E78A1818AF96572318D4DAAABA913DE713DAC97BC4562CA082BE7A56D4B22DAD55D6DC76B9BFF522624A361327ED4DB2E4F51503171E42246B97ADDB5CBE6AAA7A887C69AA22ABA48AA299E8F866623D8E4D8AD54C514FB1CCC6404014000000000000000000000000000000000000000000002ACCEEDED62A0A4B3C2FC249D79695137B5ABD14F0577DC4BEF996F64B0B5C95354D96A13FD3D3AE9BFCD136799425FEF53650DF6A6E350D562CAB8323C71D06A6A44FFEDF89641E5800E9100000000000000000000172E6D72CA9EA6820B1D6AB63AAA7623207E3AA56A6EFD644F7E059A86A6C6E747235F1BDCC7315151CD5C151772E25B39239D16B638E8F299CA8A9D16D6E18E3D5A689B3C7DE62C55B40F953D445550B65A69192C4E4C5AF63B145F33EA640000000000000000000000000000001B4003E155594F434EB355CD1C31376BE47A3513CD4815E73AD6AA3C63B543257CC9F593A11A79AEB5F24182C43C9BA6525A6CCD55B957C10B93646AEC5EBE0D4D7F028CBBE707282ECAAD5AC5A487F474A9A1EF76DF89157F49CAF72AAB9DB555715535F29AB82EB9DFA68F4D965A09277A2E1CAD42E837DDB57E0402F196D7EBCE936A2BDF142EFC8D3FE2DB8752E1AD7CD48FB50CAA626A41C400500000000000000000000000000001E85A6FB74B1CBA76AAD960D78AB11716AF8B575161D9B3BF2311B1DF68794DCB352AE0B875AB57E4BE4558302583666CF95567BEB53F06D745249FA272E8BD3F65759ED26B35311CAD5454D4A8B8A2A2E0A84B2CD9C2BEDA15AC5A84ACA64D5C955749513B9DB4CDE55B0E08059B3A967AED18EE2D7D04ABB15FD38D7F693E6884E69EAA0AB81B2D24D1CD13B63E3723917CD0CE0FB0000000000000000023594796B6AC9B6E855C8E96AD5316D343ADDE2BB9A9E3E58953DEF3957ABAE932924FC1F4FB9B02F4FCDFF00C910B268B8EF195368B1331B956C51BD5316C48BA523BC1A9ACAD2F59DBA89B49961A448235D5CB54A239CBE0DD89E7895948F74B22BE4739CF76B57397155F3538A1AF94D772E173AEBAD472D71AB9AA24DCB2BD570F04D889DC8755A860CA6F3584BAC000A80008A0000000000000000000000000000000000000000C60772DF73ADB55472D6EAB9A9A45DAB1BB045F14D8BE67500C166D973B75702B22BE52B2A19B16687063FDDB17E058F66CAEB35F534682B18B36F8245D07A792EDF235AF00DE8BD1DB5535A19F91B648A64D7BB1E70EF566D18DF32D6D226AE46A5749513B9DB53E25AF93B97F68CA0732063D696B97FD3CEB82AFEAAEC77DE67E7152D0010081E7032DD327A97D8ADEE45B9CCDC74B6A42DFCE54DEABB93CC965EAED0D92CD535F55AE38198E8A2EB73B62353BD57043596E371A8BADD2A6BAB1DA53CEFD272F575278226A4EE435CCD1F19A592A277CD3BDD24D22E93DEE5C55CBD6ABD6714DE60CA6F3A78CFAC0008A0000000000000000000000000000000000000000000000000000000000001954F8183928459B9079C49E2AA86D77E996489FD086A9FB5ABB9AE5DE9BB15D9BCB90D4C54C10D87C80BD3AF591F4F24CED2A8A755A795DF9CADC305F34543162CAF0B3C13BD993543135551B25562E4EBC1AE5429342E3CF1AE16FB4370DB2C8BFBBFD4A7702F370B59001A0000000000000000000000000000000000000000000000000000000000000000000019C0B6B3372B9692F10E2BA2D9237A275628A9FED2A62D0CCEBFFB6DE1986D8E25F8B89F83B19E47F46CACC3F4CB8FD842A52D3CF1BF1AEB433AA3917E2DFE455839F00005000000000000000000000000000000000000000000000000000000000000000000001CF71656683FE7B744FF00B662FEF295AEE2C7CD0BBFC45724EBA56FF1FF00533472CF0BF1BEDB1987D1A67AE3E2EFE85665999E0A7952F96EA8D05E45F4EAC47EED2472AAA7B9517DE56639A000340000000000000001A000000000000000000000000000000000000000000000000000039163667FFCC770EFA54FE342B92CCCCF534AB79B954E82F22C8123572FE72B91513DCDF8A19A2D4BB59A8AF76E7D15CE06CD4EFD7A2BB51772A2EE5218B9A2B12AF46A2BDA9B93946AE1FBA58860C2ABBE682C9DAABFEDB384734164ED55FF006D9C258A07D515D734164ED55FF6D9C239A0B276BB8793D9C258A0BF54575CD0593B5DC7D46708E682C9DAEE3EA3384B140FAA2BAE682C9DAEE3EA3384CF34163ED771F519C258809F42BBE682C7DB2E3EA3384734163ED971F519C2588068AEF9A0B1F6CB8FA8CE131CD0593B5DC7D467096282ED15DF34163ED971F519C2639A0B276BB8FA8CE12C50368AEF9A0B1F6CB8FA8CE131CD0593B5DC7D467096281B4577CD058FB65C7D467098E682C9DAEE3EA3384B140DA2BBE682C7DB2E3EA3384C734164ED771F519C258A06D15DF34163ED971F519C2639A0B276BB8FA8CE12C50368AEF9A0B1F6CB8FA8CE131CD0593B5DC7D467096281B4577CD058FB65C7D467098E682C9DAEE3EA3384B140DA2BBE682C7DB2E3EA3384C734164ED771F519C258A06D15DF34163ED971F519C2639A0B276BB8FA8CE12C50368AEF9A0B1F6CB8FA8CE131CD0593B5DC7D467096281B4577CD058FB65C7D467098E682C9DAEE3EA3384B140DA2BBE682C7DB2E3EA3384C734363ED771F519C258A06D15EB7347626BD15D53707B7A9656F0934B4DAA8ECD6E6515B606C34ECD8D4DAABBD5577AF79DE09A89A3FFFD9)
INSERT [dbo].[Пользователи] ([Код], [Сотрудник], [Логин], [Пароль], [Фото]) VALUES (6, 106, N'ignatov@namecomp.ru', N'rwVDh9', 0xFFD8FFE000104A46494600010100000100010000FFDB0043000504040504030505040506060506080E0908070708110C0D0A0E141115141311131316181F1B16171E1713131B251C1E2021232323151A26292622291F222322FFDB00430106060608070810090910221613162222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222FFC000110800FC01E003012200021101031101FFC4001D000100030100030101000000000000000000070809060103050402FFC400481000010302030503050A0E020203000000000102030405060711081221316113415114227181911518324256627294A1D216232433375263758292A2B1B2B343C217C13454E1FFC40014010100000000000000000000000000000000FFC40014110100000000000000000000000000000000FFDA000C03010002110311003F00B960000000000000000000000000000000000000000000000000F4D555D3D0D2C9535B3C54F4F126AF9667A31AD4F1555E08535DA436937C8F9308E5BDCE35A77334B85DE8E5476FEBFF00144F4E49A7C27271E3A269A2EA12BE6E6D3186B2F167B659F72F78919AB569A17FE269DDA7FCAF45E69FAADD57B9774A7B4DB4463C8F3420C635972F2BA9851D1A5049AB69522773892345E09C1ABAF3D5A8AAAA4534D4F515D5715352C52CF512B9191C51315CE7B97922227155251B06CED99B886B5F053E17ABA36C4EDD926B8E94EC6AFA5DC5DFC28A076D3ED9198D2CAAE8A96C10B57E2B691EBF6AC87A936C4CC945D7B3B12FA689DF7CFE2F1B20E63DAEC095D4C96AB9D4EFA356868EA57B4445F8DABDAD6AA270EFD789C7CDB3AE6A40CDE9306D7AA7ECE489EBEC472813BE5CED93DA5456B333A91B147BADF2596D148AA88BE76F7688E9157F574D3A937D8F68DCB0BF3D8C83155352CAEE71D7B1F4FA2F557A237ED33CEEB95F8E2CA9ADD3095F29D9FAEEA0915BED44D0E49F13E291CC91AE63DBC15AE4D1500D8AB7DCA86E94A9516CACA7ACA77729A9A56C8D5F5A2AA1FACC7BB2E21BBE1CAF4ACB05CEB6DD549A7E36927744EF6B55352C4E5E6D838A2C52C54B8E29D97EB7F06ACEC448AA9A9E3AA68D7FA15117E7017EC1CA605CC1C3B98760F7530ADC63AB81AA8D963F832C0E5F8AF62F16AFD8BDCAA75600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008AF3933A6CD94987D92D637CB2F7588BE436D63F457E9C37DEBF1588BDFCD79277E9225EAAEAA82C75B576FA17DC2AE085D243471C88C74EE4455462397822AAE89AAF899398E716DE31BE34B85F311CCB257D448A8AD4F831351746C6D4EE6B53827B578AAA81F5B30336316664DC5D3E26B9CAFA6476B0D0C2AACA7853C1ACD74D7AAEABD4E22189F3CAD8E26B9EF72E8D6B535555E884C7B3DE50373571CCB1DDE1AC4C396F8FB4AB9E0723115EBF022572F1F3B8EBA71D13BB99A1986301E18C1B42DA5C3163A0B7C6D4D37A18537DDF49EBE7397AAAA810BECC59334983B04D3625BE5BF7715DCDAB222D4C5E7D1C4BF058D45F82E54E2ABC17CE44EE2C59E401E400078D0F897CC1F87712C2B1E21B1DB6E2D5FF00ED52B245F6AA6A87DC00576C67B22602BFC52C98792A70F56AA2AB5D4CE5961D7AC6EEEFA2A8544CD0C89C5D95D22CF77A76D65995FBB1DD28D15D16ABC91E9CD8BD1782F72A9A887E6ADA3A7B8514F495D04551493B1592C33311CD7B579A2A2F0540324F06634BE602C4F05EB0C56BE96B615E288BAB256F7B1EDE4E6AF82FF7E2692E4DE715AB3630979651A253DE2911ADB85BD5DC6272FC66F7AB178E8BEA5E28545DA2F67FFF00C7B52B89309C523F0B54C9BB243F09D4322F26AAF358DCBF055792F05EE558872E31F5CF2E31DD0E20B3BD77A176ED441BCA8DA88557CF8DDE94E4BDCA88BDC06B427107C5C2F896DF8B30ADB6F9669926A1B840D9A3777A22F345F0545D5153B9514FB48000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007199AD759EC993B8B6E347AA54D35AE77C6E4F8AEDC5445F56BAFA8C9BE2ABC4D49DA02EDEE36CF98C6A77913B5A075326A9CFB57247FD9CA65B81A83B3DE1DB5E1EC89C36CB34904EDADA74ABA9A98B8F6B3BF8BF55EFDD54DCE9B9A12A9CCE01B1B30DE5B61CB346D46A505BA085DA72572313797D6BAA9D3000000000000000001F3AF366A1C4162AEB4DDE9D9516FAE85D0CF0BF939AE4D153FF00DEE532B334701D565C6655DB0E55AB9ECA6937A9A67269DB42EE2C7FA74E0BD514D642A8ED9F81D95D83ED18C69A3FCA6D73792553D138AC326BBAABF45FFE6A0739B18E623927BAE05B84AAAD7356BADDBEEE4A9A76AC4FB1E89D1C5D04EF324F2EB153F05665E1FC431B95ADB7D6324974F8D1AAEEC8DF5B15C9EB35A6191B2C2D918A8E63DA8E6B9ABAA2A2F2503D8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000207DADA6745B39DCD8DE535653317D1DA22FFE8CEFB24293E20B7C4FF83254C6D5F42B910D15DAC2916AB670BD3DA9AAD354534BE8FC735BFF006339ADD3A52DD296772E890CCC7AAF868E4503625AD46B51138221FD9EA8256D453C72B17CC91A8E4F42A6A7B4000000000000000001C2E7058D988B25B16DB1E9AACB6D95F1A69AF9EC4DF67F5350EE8FC7758D24B356B1DF05D03D17D1BAA063A686AE64F5E1F7EC93C1F7195DBD24B6B85B22F8B9ADDC77DAD532955BA39C9AF25D0D33D992674DB3661473FE2B26627A12791009893900000000000000000000000000000000000000000000000000000000000000000000000000000000000000008FF3AACCFBF646E30A085BBD2BAD92CAC6F8BA34ED113DAD432A0D62CD4C6D4197F96577BFDD624A88E18BB28E975D3CA247F9AD66BDC8AABC57B91157B8C9F91FBEF5544D13B935D7440358B2A2F8988F2770A5D37B79F516D87B45F9ED6A35FF00D4D53B32B66C718A12ED93B596591DACD63AE735ADD79452F9EDFEAED3D859345D4000000000000000001F1316DC196AC137DAE9574652DBE7997D0D8DCBFF00A3ED90DED3988930F6CF388745D26B9232822E3A6AB23BCEFE8478199C6A06CF142B41B3BE0E89C9A2BE8D66FE791CF45F6390CBFD4D20D98F3269F1BE54535B3C9D94F72C371C5433C51F06BE346E914889DDAB5AA8A9E2D5F102754E40000000000000000000000000000000000000000000000000000000000000000000000000000000000000002AD6DB35EF832C30ED1B1DA36A6E8AF7754644EFBC53ECAEB052629CD9C3166B9C6B250575C618AA18D72B55D1ABB5726A9C5354454E05D6DB1F0F4D75C97A4B9D3B37BDC7B83259553BA37A3A355FE6730A2D83710C984F1D592FD0B77DF6BAC8AA773F591AE4554F5A6A806A7E13CBEC2D821B50984AC9456C5A946A4CEA7668E911BAEEEF2AAAAAE9AAF7F79D4A779F8AD372A6BBD9E8EE56F9125A3AD8193C1227C6639379ABEC543F70000000000000000003E4E20C3766C536B5B7E23B651DCA895C8FEC6AE1491A8E4E4E445E4BC578F53EB1F96E35D15B6D9555B50BA434B0BE67AF835A8AABF6201995B43DA70E58B3CAF36CC1F43151505236264B043AF66D9B7115FBA8BC938A269E28A4B7B10C53BB1862F9188BE4EDA185AFE3C379645DDFB11E561C417AA8C4589EE979AD5D6A2E355254C9F49EE572FF0072FD6C85853DC2C93F75E68F76A6FD54F9F55E7D933F16C4F6B5CBFC405880000000000000000000000000000000000000000000000000000000000000000000000000000000000000001F2313D869714613BAD8EE0D4752DC699F4EFD7B91CD54D7D28BC53AA191B79B554D8EFF0070B557355B554150FA795BA69A398E56AFDA86C4E86716D61831F8633C2AAE3145BB4188224AC89C9CBB44F3644F4EA88EFE3402D06C9D8AFF00087226968A7937AAAC750FA3722F3DCD77E35F468EDD4FA24FA86766CA19954B827336A2D57AA96D3DA71046D856691DBAC8A76AAAC4E72AF245D5CDD7C5C9DC681DA6F76CBF51C95365AFA6AEA78E5742F969A5491AD7B57473555386A8A07D0000000000000000022CDA1711B70D64062AA8493726ABA55A2874E6AE9577387A1AE72FA8EC718E34B2604B0B6EF8A2B3C8EDEB3B2059B715DBAE7AE89AA222AE9EAEE29B6D6F9B36CC5125930BE17AF82BE829912BAAEA69A549237BDCDD236A3939AB5AAAABF4D139A281559A8AF7235A9AAAF0444EF35BB2FEC1F83196D872CDBA8D7505BA085E89FAE8C4DEFEAD4CD9C8AC1CFC6F9DD876DAB1EFD2C150DABAB454D53B18977DC8BD15511BFC46A6000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000225CFCCA74CD5CBA7D1D0A46CBF5BDCB516F91FC115DA68E8D57B91C9DFDCA8D5EE25A3C2818E974B5D6D96ED536EBB52CD495D4AF58E682662B5CC727345452DEEC4B8A1A9518A70C4CF5474891D7D3B15DC387992689EB8CFEF6D6C18AA98771853449A22BADF5922378AF37C4ABEC913D8577C98C71FF008FF37EC57B95EADA26CDD85669DF0BFCD7AFAB5DEFE10354D3BCF27F1148D9636BE372398E44547357545453FB00000000000002A2EDB78999161AC3186E2953B5A9A87D74AC4EE6B13718ABD155EFFE5292C313E6999142C7C92C8E46B18C6EAAE55E08889DEA4B1B45E366E37CF1BCD4D2C8925BEDCA96FA4545E0AC8D551CA9D15EAF5F42A1286C5F829B72C677AC53590A3A0B5C294D4CAF6A2A76CF5D55C9D5AD6E9FC604CDB30E4DD465DE129EF588A0ECB11DE5AD5742E4E34B0736C6BF395747393BB46A73452C2A77809DE07900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001C366D58EC988B29AFF006CC515D496FB74F4CBF96D5BD18CA7911758DFAAF83D1BE9E5DE6524D1F653C916FB1FB8E56EFB1756BB45E68BDE85A3DB07325D79C694B82EDB3AAD05953B4AC46AF07D4393822F8EE317DAE5F02ACA01A67B32E22AEC49B3ED8A7BA48B2D451AC94692B97557B2372A335EA8DD13D44C850DD9E3691B4E00C394F84316504915B1B33DF15D29B57AB15EED57B467354EADE3D1799782C97DB6622B4C572B157D357D04C9AC73D3488F6BBD69C97A2F1403E90000000011F674E2D970464AE26BDD2BF72B22A5ECA99DFAB2C8A91B553AA2BB5F51D7DF2FD6CC37679AE77DAEA6A0A0813592A2A644635BD355E6BD39A9483687DA4AD58FF0E54611C21452C96B74EC7CD73A8D58B2AB1DBC891C7CD1BAE9C5DC7A27302ACAB95CE5572AAAAF155534F7675C314386721EC30D054D355495AC5ACAA9E9A447B1D33F8AA6F270556A2359FC2661169B63BCC95B3E34ABC17729D5B437A4ED2891CBE6B2A1A9C513C37989ED6A78817C400000000000000000000000000000000000000000000000000000000000000000000000000000000000003D551530D2C0E9AA658E28989AB9F2391AD44EAAA07B411D620CF1CB8C35BE974C5D6BED59CE2A697CA1FF00CB1EF29155FB6D0C0F40D736C76BBBDD644E4E56369E35F5B9557FA40B347239938CE972FF002EAEF892B375DE450AF6312AE9DACABC2367ADCA9EAD4A797EDB5B15D6248CC3F60B55B98BF05F50E7D43D3ED6B7EC217C719C58DF3129994D8B2F7255513254959491C6C8A26B911511775A89AAE8ABCF5E6A071D72B9555E2ED5770B8CCE9AAEAE574D348EE6F7B9555CBEB552CE60AD937F0CB242D97E8EEEEA1C4B706BAA608A76EF53BA15FCDB5DA26F35CA89BDBC9AFC2D345203CB5B3D96F999764A0C577282DB6496A116AEA2776EB77138EEEF7C5DED11BAAF04DED4D5FA0F256DBA9D2DE90F92246DEC7B1D373734F37774E1A69A69A0193B8DB2EF1365EDDD68315DAE7A391557B395537A29913BD8F4E0E4FB53BD10F6606CCAC5197577F2EC29749691CE54ED60779F0CC9E0F62F05F4F34EE54354EFD87ED589ECD35AF105053D7D04C9A3E0A866F357AF45EA9C50A819A9B1D4F03A7B9E57D42CF1222B96CF57279E9D229179F44771F9CA048D957B57E19C5E90DBB17B62C3D7A7688924926B4B33BE6BD7E02AF83BF994B1B1C8D9636BD8E4735C9AA2A2EA8A63BDD2D170B1DD27B7DDE8E7A3AEA776ECB4F511AB1ED5EA8A4A395DB4262FCB27C34B4F52B74B1357475B2B5EAE6B53F64EE71AFA3CDE8069BBDED8D8AE7AA235A9AAAAAE8888573CD2DAC30C61049EDD83D22C417B66AD59237FE4B0AF57A7C35E8DE1F390AA99A3B42E30CCD965A59EA56D76155F36D946F546B93F68FE722FA7874422DB5DAABEF7738682D147515B5B3BB762A7A78D5EF7AF444E207478E732B14662DDFCBB165D26AB56AAAC54ED5DD8614F06313827A79AF7AA9E9C1597B89B302F096FC296A9EB65454ED6544DD8A14FD67BD78353D3C57BB52CB6556C793D5322B9E6854BE9A35D1C967A47A6FAA69CA4953837E8B755EA85C3C3F872D185ECF15B30F5BE9ADF411279B0D3C68D4D7BD57C557C5788149B186C953613C94B9DEFDD37DCB13D035B532414EDD206C0DD7B46B754DE72A22EF6BC3E0E9A712B0DAEE75566BB525C6DB33A1ACA495B3432B79B1ED5D5AA9EB43612B3B04A2996B1634A646AF6AB2AA237774E3BDAF0D34E7A993D9996AB2D9333AFD43856E34F71B24752E7525453BB799B8EF39188BDFBBAEEEA9C174034EF2DB1AD2E60E5D5A311D1AB53CB60459A245FCD4A9C2467A9C8BEAD17BCEB8CA5C0F9C38DB2F2964A5C297B96968A491657D2BE364B139CA888ABBAE45D155113969C89A2C1B6A62CA36B5B886C369B9B1BF1A073E99EBFE4DFB00BE40AC962DB4304D739197DB4DE2D4F5F8ED6B6A234F5B551DFD24A987F3CF2E312EE25B3175A9257F28AAA5F277AFF000C88D5024707A69EAA1ABA76CD4D2C72C2F4D5B246F4735C9D15381EE00000000000000000000000000000000000000000000000000000000000000000000004399B7B42616CAE47D0CAE75D310EEEADB6D2BD356782CAFE4C4E9C5DD34E2733B4967B2E5DD9DB87B0D4B1AE29B846AE59783BC8A15FF934FD75D3CD45E5A6ABDDAE7C4F515171AE927A9925A8AAA8915CF91EE57BE47AAF15555E2AAAA04D78BB6A8CC8C4B5122505CE3B151BB8360B6C68D72275917576BE854F4111DE312DEF104CB2DF2EF70B848BF1AAEA5F2FF92A93F65AEC8F89F15D04173C5956DC3B413223A381F176954F454D51559AA2335F9CBAF427FC3FB2165C5A371F7365CEF32379A56556EB17F86346FF007033B34EA75162CBBC5F895CD4B061ABB5735DCA48691EACF5BB4D13DA69F5872BF0561A6B52C785ACF4AE6F291B48D57FF3AEAEFB4EBD138019CF61D92332EEFB8EAEA4B7D9E2777D75522B913E8C7BCA75B7CD8B31350E1A5AAB3DFE82E57566AAEA1EC5D0B5E9E0C91CABE77472227542F6226879031F2FB61BA61ABCCD6CBFDBEA682BE05D1F054C6AC7275E3CD3C153829DF658E7C632CB09E386D75AB5B65D7CFB556395D0F5DCEF8D7E8F0F14534631BE5CE19CC3B42D0E2CB5C356D6A2F633A26ECD0AAF7B1E9C5BFD97BD14A4D9A9B27625C23DB5C7073A6C41666EAE5898CFCAE04EAC4E122756F1F9A805A6CAFDA1707666C7152D3D47B977E7279D6BAC7A239CBFB37F2913D1A2F4426031B34929E7E3BF1CB1BB9A7056AA7F652C5E566D5F89708F616EC60D9310D99BA35247BB4AB85BF35EBF0D13C1DC7E72017431FE56615CC9B5F9262AB73269188A905644BD9CF07D07A77745D53A19738AE82DB6AC6376A0B0D6BEBED74B552454D56F6A3566635CA88ED13871D3D7CCBC99BFB4561BA8C82ABABC0F778EA2E97AD686387E04F4A8E6AF68E7B178B551BAA22F2D5C8A8ABA142692967AEAD82969227CD515123628A3626AE7B9CBA222277AAA81F470AD0DB6E78BED5437EAD7D05AEA6A99154D5B188E5858E7222BB45F0D7D5CF45E46A2E5F655E14CB6B62D3615B6B2199EDD26AC9B492A26FA4F5E3A744D13A1951594B3D0D6CD4B5713E1A881EE8E58DE9A2B1CD5545454F1454542FC64F6D1386A9B21696AF1CDE2282E966FC86589555F3D56EB7F16E63138B955BA22AF8B5555788166488F33F682C1D962C9296AEA7DD2BEA279B6BA37A2BDABFB47728D3D3C7C114AA99A9B58625C5E935BB0735F60B2BFCD5958F45AB99BD5E9F9BF4378FCE52BA2AC9573EAAAF92691DD5CE7B957DBAEA049F99D9F38C733667C372ACF21B36BAB2D746E56C5D15EBCDEBF4B8782211F58EC374C497886D962A1A8AFAF9D746414F1ABDCBD744EEEABC109F72AF64EC498BD21B963174B87ECCED1C9148CFCAE66F462FC04EAEE3F354BB181B2DF0C65CD9D28709DB21A56B911259D537A69BABDEBC57D1C93B9100A8360D8AF12D7E194AABDE20A2B5DDA4D15B4090ACED637C1F235C89BDD1A8A9D54E52FDB22E65DA3B475053DB6F11378EB45568D77F2C88D34606806495F72DB18E1973D2FD866ED44D673925A47EE7F3A26EFDA72BA1B2BA1C9DFF2CF05E276BBDDDC2F67AC7AFF00CB252311FF00CE888EFB40CABB4625BD5825592C777B85BDFAEBBD4952F897FA55096F096D5199586676256DD23BE51A70741738D1CAA9D246E8FD7D2ABE82D35FF643CB5BBEFBADF15CECF23B9791D52B9A9FC3223BFB95F7327646C4F852827B9613AB4C45410A2BA4819176754C4E8CD551E9E85D7A0167F293686C2D9A2D650B1CB6BC408DD5D6DA97EBDA69CD627F047FA382F4EF26431BE9E7A8B7D7473D34B353D4C0F47472C6E563D8E45E0A8A9C51514D08D9B33D5D98F667D8313CCCFC2AB7C68EED7837CB624D137D1396FA6A9BC89CF5D53BF40B100000000000000000000000000000000000000000000000000000000000007CBC477DA5C3385AE97BB8AE9496DA592A65D178AB58D55544EABA69EB3EA104ED637B75A3679B9C0C7EEBEE9530D2278AA6F6FB93D91AA019F38B71357E31C6174C4177915F59719DD33F8EA8C45F82C4F9AD4D1A9D110B6BB28E47D3ADBE1CC0C514ED96691DADA29A56EA8C6A2E8B3AA78AAEA8DF0D37B8EA9A53DB4DBE5BBDF282DB4FF9DADA88E0670F8CF72353FB9AF768B653D9AC9456DA262474D450320898DE4D6B5A8D44F62201FB80000000000000004479A3B3EE0FCCD8E5AAABA7F732FCE4F36E946C447AAFED1BCA44F4F1F05428C666E43630CB19E49AE549E5F65DED23BAD1A2BA2E3C91E9CD8BE9E1E0AA6A19EA96164D13E3998D7C6F4DD7B1EDD51C9DE8A80637E858FD91F2E7F09B3266C4D5F123ADB87511D1239384954E45DC44F1DD4457745DD27EC6FB23E08C5377F2FB3CD5587A491759E1A26B5D0BFAB58EF80BE85D3A12E600C0164CB7C1F05830D42F65246E591F24AEDE9269174DE7BD786AABA272444444444E40524DADF2E1D86B331989A822DDB6622D5F26EA708EA5A9F8C45F0DE4D1DD555C56E35AF3032FEC999183EA2C189217BE96472491CB13B7648644D747B178E8A9AAF3D515155179911609D91703E17BD25C2EF355E207C6BAC34F5A8D6C2DEAE637E1AFA574E80544CB2C87C6399D34735AA8D68ACCAED1F75AC6AB62D139EE77BD7A270F1542F36576CF783F2CD90D55353A5D2FCC4D5D74AD8D15ED5F18DBCA3F571EAA4B50C1153C0C869E3645146D46B238DA8D6B513922227243D89DE07900000000000000014EB6AFC90A74B74F98185E9DB14B1AEB77A689BA23D17824E89E28BA23BC75DEEE5D6A4E11C4F5F837185AF105A1EACACB74ED959C7447227C262F4726AD5E8A6B6DDED74F7AB2575B2B988FA5AD81F4F2B5535456BDAAD54F62990977B7CB67BE57DB6A3F3D4551240F4D34F398E56AFF006035D30E5FA9713617B65EADCED692E34D1D4C5C75546BDBAE8BD5391F5482764FBDBAEDB3EDB2091FBCFB5D4CF46BD111FBEDFB1E9EC276000000000000000000000000000000000000000000000000000000000053FDB7EF5B966C21656BBF3D3CF56F6FD06B58DFF371700CF6DB1EF2B5F9E305B98ED63B5DB628D53C1EF5748BF6398047F90166F773682C214CADDE6435A954EE89122C9AFB5A86A3B791407631B2A576725C6E8F4D596CB63F7574E4F91ED6A7F4EF9A01A000000000000000000000000001A000000000000000000000000CB6CFFB37B85B41630A546E8C96B56A9BE895124FEEE53524CFEDB32C9E439CB6FB9B13CCB9DB59BCBA737C6E7357FA770090B620BDEFD9717D91CEFCCCF0D5C69F4DAE6BBFC1A5BF33DF638BCF90677D4DB9EEF32E96C9588DF17B1CD7A7D8D71A0E8A0790000000000000000000000000000000000000000000000000000000032BB3CEF2DBF67DE32AD63F7D89717C0C5F9B169127F81A8975AE8ADB67ACAEA95D21A481F3BD7C118D572FD8863ED7D64970B9D5564EBACB532BA57AF5739557ED502EC6C4366ECB0AE2DBCAB3FF00935915331DA2F28D8AE5FF006216DC843656B37B91B3A5924737492E534F58FEBAC8AD6FF4B1A4DE800000000072B89331F08E10AE8A9313E22B65B6AA64DE64351508D72A78E9DC9D54E929AAA1ACA58AA29658E6A79988F8E589E8E6BDABC51C8A9C151538EA65266D5C2A6E79CD8C2A6BA67CD32DDAA23DE7AEAA8D6C8E6B53D08D44444E85D8D8EEE1535D908F8EAA67C91D15D678206B975DC66EC6FDD4E9BCF72FAC0B12000000000000000000000003D35355051524B5357347053C2D57C92CAF46B58D4E6AAABC110E6F0DE63E10C5F5B352E19C456CB955429BCF869AA11CF44F1DDE6A9D5381116D875F5345908D8E9667C4CACBA430CE8D5D3B466EC8FDD5E9BCC6AFA8A4D94971AAB6673E0FA8A09DF0CDEEB53B15CC5D356BA446B9BE856AAA7AC0D60000000002A3EDBB66ED709E13BD359AF92D64B4AF7749188E4FF5296E083F6ABB37BAFB3A5EA46B77A4B74D055B3A68F46B97F95EE028FE45DE92C59F983AB1EFDC62DC194EF778365D635FF335393BCC73B756C96DBA52D6C1F9DA5999333E935754FEC6C0DB2B62B95A692BA9D7586AE164CC5F14735153EC5403F6800000000000000000000000000000000000000000000000000000008DB3E6ECEB2ECFF8CAAD8BBAF75BDD035DDE8B2AA47FF632C0D48DA0ACF35F367CC5D474CD73E66D2794235A9AAAA44F6C8BF6354CB7035C32F2CDF83F961866D3A222D15B6089DA72DE4626F7DBA9D3A779C4655E37B763ECB6B45E2D73C6F73A9D91D542D726F41335A88F6393BB8F2F14545EF3B74EF03C80000000C92CC9FD2D62FF00DF357FEE7176F62FFD0457FEFB9FFD509493327F4B58BFF7CD5FFB9C5DBD8BFF004115FF00BEE7FF0054205920000000000000000000000015B76CEFD0550FEFB87FD5314972D3F4B9843F7C527FB9A5D9DB3BF41541FBEE0FF54C525CB4FD2E610FDF149FEE681ADA0000000072F98765FC22CB1C4D69E1AD6DB6789BAF2DE562EEAFB743A8388CD4C716EC0196B77BC5D278D8E4A77C74B139C88E9E6735518C6A77F1E2BE088ABDC064F1A9D90F7775EB20B06D5BD779E96E640E777AAC4AB1FF00D0CB1351F67EB3CB63D9F3085254B5CD95F47E50AD7268A892BDD227D8E4025100000000000000000000000000000000000000000000000000000001EB9A28E785F14CC6BE37B55AE6B93545454D15153C0CCDCF8C99AFCAFC693C9490492E18AE915F415489AA335E3D8BD7B9EDEED7E1226BE289A6DDC7CFBB59EDF7DB554DBAF547056D05431592D3D4468F63D3AA28192F85B1A622C1571756615BC565B2A1E888F5A79346C889C91CDE4E4F4A29223769ECD86311BF854E769DEEA3835FF0252CFEC82C1D82EDCEBBE1B6DC291D2A2BBC97CA11F137D1BCD577F51531C9A3953C0098BDF419B1F2A17EA707DC1EFA0CD8F950BF5383EE10D00265F7D066C7CA85FA9C1F707BE83363E542FD4E0FB843400FD571B854DDAEB5770B84AB2D6564CF9E79151137DEE72B9CBA270E2AAA77183739F1C600B1C96AC2779F21A092659DD1793C4FD5EA888ABAB9AABC9A9EC23D3CA8132FBE8735FE53AFD4A0FB83DF439AFF0029D7EA507DC219004CDEFA1CD7F94EBF5283EE0F7D0E6BFCA75FA941F7086401337BE8735FE53AFD4A0FB83DF439AFF29D7EA507DC219004CDEFA1CD7F94EBF5283EE0F7D0E6BFCA75FA941F7086401337BE8735FE53AFD4A0FB83DF439AFF0029D7EA507DC219004CDEFA1CD7F94EBF5283EE0F7D0E6BFCA75FA941F708640121632CE7C718FAC4CB4E2CBCF975BD93B676C5E4F147A3DA8A88BAB5A8BC9CBED389B65CAA6CF77A3B8D049D9D6514CC9E093445DD7B5C8E6AE8BC178A21F9401327BE83363E54BBEA507DC1EFA0CD8F952EFA941F7086C0131FBE83367E54BBEA507DC1EFA0CD9F952EFA941F7086801323B69FCD97315BF854E4D7BD28A0D7FC08F314635C458D6E2DADC5778ACB9CEC4DD62D449AA313BD1ADE4D4F4221CF216CF67EC83C1D8DA852EB895B70AB58988FF254A84644F5D7BF75A8ED3F8808C3217266BB34B19C52D54124785EDF223AE152A9A249A71EC58BDEE7725FD545D7C1174BE18590C4C8E16A3236351AD6353446A22688889DC87E3B35A6DF63B4C16EB35153D0D0D3B51B153D3C68C6353A221F413BC0F20000000000000000000000000003FFD9)
INSERT [dbo].[Пользователи] ([Код], [Сотрудник], [Логин], [Пароль], [Фото]) VALUES (7, 107, N'hohlov@namecomp.ru', N'LdNyos', 0xFFD8FFE000104A46494600010100000100010000FFDB0043000504040504030505040506060506080E0908070708110C0D0A0E141115141311131316181F1B16171E1713131B251C1E2021232323151A26292622291F222322FFDB00430106060608070810090910221613162222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222FFC00011080140014003012200021101031101FFC4001C0001000105010100000000000000000000000601020305070408FFC40046100002020102030406060607070500000000010203040511061221314151611322718191A107143252B1C123426272D1E11533435392A2F01635368293B2C226556373F1FFC40014010100000000000000000000000000000000FFC40014110100000000000000000000000000000000FFDA000C03010002110311003F00FAF4000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000031DD7578F44EEBE71AE982DE564DED18AF360642CB6D8534CEDBA70AEA82DE764E5CB18AF16C806B5F4954D5CD56834AC86BB32AF5CB0F6C63DB2F7EC47742AF2B8CF8AF1E3AEE4D995898C9E459549ED5ED1DB65C8BA25CCD6E0760AAFAEFA616D3252AE6B9A325D925DCD7911DE31E23FE81D11FD5E715A964BE4C78B49F2EDDB36BC17E3B1E6D738EB4ED214E9C39C33F3F669555BDE107FB52FC96EFD872ACCCFCAD473ADCBCFB9DD7D8FACBB125DD14BB92F0025385F48DABD525F5DA317322BBD45D52F8AE9F2253A5FD2369199B435056E9D6FFF0032E687F8A3F9A47268B292407D115DD5DD546DA271B6992DE3641EF17EC65E9EE703D2756CFD0AE73D3321D7193F5E99FAD5D9E4E3F9AD99D6786F8AF178831E5086D4E7551E6B71A52DDFEF45F7C7E68092000000000000000000000000000000000000000000000000000000000051BD80F26A9A9E2E8FA65D9D9F3E4A2A5D765BB93EE4977B7E0716D778832F8872F9B25F26241EF562C5EF18F9BFBD2F3F81B8FA42D5A79BC471D36B9EF8DA724E4BBA5735BB6FCD269796EC88A5B01528D6F194776A32ED49EDBAF02A0004B6000000017D191761E651958B64AAC8A25CF5D91EE7F9A7D8D77A65800EE5C3BADD5AFE874E6D49426DB85D52FECEC5DABD9DEBC9A37071AE07D7E9D0B55C8AF50BBD1606556B9A5CADA84E2FA3E9E4DA3AF62E5519B8D1C8C4BAABA89FD9B2A9A927EF406700000000000000000000000000000000000000000000000000016CA5CBFC7B92F1DCE69C4DF48364EDB3138764E35C1F2D99C92DDF8FA34FBBF69FBBC4A71EF12CE775BA2615AE35C76599383EB27FDDEFE1D8E5E3BEDE24077D96CBA202AEC94EC9CEC94A764DEF294DEEE4FBDB7DECA96178000000000000000F569BA7646AFA8470F17D5E6FEB2D6BD5AE3DF27F97981E46B7FCBD87A34ED4B3746CB591A5E4CE8B3BD2EB09F94A3D8D19B5D8554F11E7558EB6A299AAA0BCA2923C0DEE0762E17E2FC6D7E12A6708E3EA108F34A8DF78CD77CA0FBD78AED44A14B73E76AADB71EFAEEC6B6555F5494EBB23DB192EC6BFD753B770BEBD0E20D0E19494617C1FA3BEB8F646692ECFD97DA80DE800000000000000000000000000000000000000000001A9E21D59689A06567ECA53AE0E3541BFB563E915F9FB8DB1CD3E93B36525A5E9E9EC9F3E4CD78FEAC7F3604016EF77649CE726E5294BB64DF56FE3B80001472D8A9BED0F862DD5698E565CA74613EB0496D3BBD9BF647CFE1E2068A0A56CD42984EC9BEC8422E4DFB91B6C7E17D672367F5254A7D9E9EC507F0ED3A1E1E16369D42AB4FC7AE882FB91EAFDAFB599DB6DF57B81038F04EA12DD4F270AB92EE6E52FC8CAB81B27F5B50C5F755264D8AEC042D702DFB7FBCA8FFA321FEC2DFF00FB951FF4644D4010FA780E9563797A8D96C1FEAD35F27CDEE49F0B07174FC7F43834429A9772EAE4FC5BEF67A401CAB5E5CBC4FAA2EDDB225D4D79B9E27ADD3C559BCDFDAF258BDF15FC0D4816123E0AD5FF00A2F8AA985B2DB173F6C7B7C9EFEA4BDCFA7BC8F9496EA2E49ECE1EB27E0D763F881F44A2E35FA6E67F486938798B6DB2698D9D3C5AEBF336097400000000000000000000000000000000000000000071BE3EBBD371CE4477DE38F45752F2E8DFFE4764388F183DF8EB58FF00EC8FFD880D1803D794A35D4B7B2C928C3DADEC809070BE86B53C8FAE66C1BC2A65B463DD6CFB767FB2BBFC5F43A0EDD1766FD9D0C185890C0C1AB12A5B4688F26FE2FBDFB5BDD9E800000000000000000211C7189C999859B149BB20EA93F38F55F26C89C7BCE9DC4380F52D0B228AFF00AF86D6D3E728F77BD6E8E611EC605C0003AFF00DFE9B817063BEFE827655F093DBE4D12A8F610DFA37F5F842C5E19967E44C97402A0000000000000000000000000000000000000000715E36ADD7C77A9737F68AB9AF7C17F03B51C9BE9231FD1F13626424B6C8C44B7F3849AFC1A021C6E785B1565714623975851CD73DFC52E9F368D2A7B92EE05A53CCD4AEDBAD75D75FC5B7FF0088135400000000000000000000BA339CF14692F4CD45E55716B0F324E51D974AE7BF58BF6F6AF69D18C191878F9D896E366439E9B56CD787835E0D773039203D19D892D3F53C9C2B1F34E89F2F36DB732ED4FDE8F34A5CB093EDD96E0760FA3B872704D12FEF6DB67FE76BF225868F84B1FEABC1DA4D4D6D2FAB464FDB2DE5F99BC0280000000000000000000000000000000000000000407E93B137D0F4FCB4BD6C6C8E46FF00666BB3E2913E219C555CB51D2352A12DF6A9BABF7A3D77F96C072652275C0F5B5A467D9CDBB9E525EE51FE640E3D56E742E0A8EDC3F64BEF644DFE0049000000000000000000000000739E2E5CBC5777ED535C9FB794D1384AD71AA0B79DB2508AF36F637DC5EF7E2ABBCA9A97F94F270F51F59E28C0AF6DD466ED97B22B7FC7603BAD352A298531492AA2A0B6F25B190D769D932BB19FA47BCE0F666C13ED00000000000000000000000000000000000000000045A2FD772DBA36FA793EE25245DF4B26BC24D7CC0E45918BF53CDC9C56B69516CA1B7927D3E5B13CE0B5B70BC5F8DF67E288EF1963BC7E2377C52E4CBAA33DD7DE5D1FE0BE248B8363B70A52FEFDB6497B39BF901210000000000000000000028CA9460739E2C7FF00AAB27CABAD7F94D9703E3A7979D9528ADEB82A632F06FACBE497C4D6F17270E29C8E7E9CD55725ECE5259C2F872C2E19C58D8B6B6F5E9E6BBF79767C92025DA4765DED5F99B65DE6A748FB37FB5236CBBC0A000000000000000000000000000000000000000011DCD8F267DABC5EEBD8C911A9D5A9DDC2E8AEC5CAFF0020215C59A4646A987892C1AD597D36EDB37B6D1976B6FC16C99B7D3B0D606978F8907BAA60A3BEDB6EFBDFBD9EB43602A00000000000000000000000233C45C3B66B1A969F6D6E1E8D35564ADF67E8F7DF9978F6EDEF24AF6DDA8ADA0BA457822A5146529C6305BCA4F64BCC0DD6950DB0DCF7FB736F6360BBCC3456AAAA308F64629199778140000000000000000000000000000000000000000315D5AB6A9425D8CCA5008F5989755638CA0DF8349B4CC09EE4A3623364796FB63BEFB4DAF981400000000000000000000000158C273FB1172DBB76EE46C74FC39466AEB63CBF753EDF694D263B46E96FDBB236896C05E00000000000000000000000000000000000000000000000068B52A95799CC974B229FBCDE9E1D4B1FD3636EBED43AA034A0000000000000000000001928ADDD7C6B5DFDAFCBBC0DC6057E8F0609AD9BF59FBCF5148AD91502E0000000000000000000000000000000000000000000000002D922E0047B2F1FD05ED457E8E5D62FF13CE8DE6A30DF4FBA4A2A538ADE3BF89A0A66ADA94E2F74FE29F7A7E6064000000000000000036DA763F257E924BD69F67B3B8D3557C16AF878CDA72B2D4A693ECF2F692AD80A80000000000000000000000000000000000000000000000000000068F5DE20A347A22A695B973EB0C752DBA7DE93DBA2FC40D8EA128C70A49C92949A518B7B393F05F32277A9E2592C9A63CD097F5B5AEFF334583A864EA5C53877E6D9CF62949452E9182717D22BB912B6B75D40C74DF0BE1CD5BF6C5F6C7C9994D2DF876625AECC64FD1F93EB1FE465A3557F66F82FDE8AEA06D41E5867E34F7DAC4B6EE92D999A37572ECB21FE240640637752BB6DAD7B64796ED4E9836AADECF76C80F71E0CAD42356F0A1A76EDD649FD9FE2782FCEBEFDE3BF2D6FB62BBCC080F6696D2D6B0A764D2DAEDE5293DB76D3EF3A02EF396E5C632C0BD4D6F1E5EC3D3A1715DFA6B8E3E7BB2FC44FD5976D957B3EF2F27D40E940C545F5E4D10BB1E71B299ADE3383DD332800000000000000000000000000000000000000000000000D46B7ADD5A469D2B6494EDB3D5A6BED7397F05DFF00CC0F2F10F1057A352A15ED667DABF475B7EAC57DF979782EF39ADD75B919165D9164EDB6C7BCA737BB6CADB75B93936DF9363B2FB65CD39BEF7F92EED8B00F7E87FF001061FEFBFC19355DE43342FF007FE1FEFBFC193401F8335993A66FCD662A4BC60DEDF0FE06CCAAEF022DB34DA6B66BB517121BF1AABD7E922B7FBCBA35EF35F6E97349BAAC8CBCA5D00D72EF1B19678F754DAB2A92F35D57C4C2A405DCA5762DDC6FE4DBF0480C599D302EFDD34DB743799B45DFD1D91275CA308C7ACA4B64BA9A24C0DBE85AF5DA25CD462ECC393DEDA53D9EFF007E3E12FC4E9D8D934E5E2D7918B62B68B56F09C7B1FF00AF038DA375C39AFBD1335C2E6DE0DF2FD2A5DB06FF005D7CB7FE40751454C719A6938B4E2D6E9A7BA6BC4BD015000000000000000000000000000000B54B9B7E54DECB77B0170347A8715695A7B70791E9EFFEEA85CEFDED745F122D9DC6F9D911943069AF12BFBD35E92CF9F45F003A1596C2A839DB385705DB39CB64BDECD1E5F17E918BD2BBE5953ECDB1E3CCB7F6BD91CD322FBF366E79B7DB9136F7DED9B97CBB0B5766DDC04BB278FAF96F1C3C0AE3B7EB6459BB7EE446B3B51CAD4F27D3E6D8A73DB64A2B68C5782479762A01150004672AE719D6F96C83E68CBC1932D3755A7518ECDFA3CB7D6753FD6F38F8AF2ED4434A7E40745D82E84530388ADA7D5D41BB6B5FDAAFB6BDBF7BF1F6926A322AC9A9598F646CADF64A2FFD6CFDA06400001B45FDA8A7ED40014E487DC8FF0085146EBA6129CB92B8456F29BE892F3678350D5F1B01BAE4DD991DD547F37DC45B3B3EFD467BE44B6847EC570E918FF3F303D5ABEAFF005F6B1E8DD62C25BEEFB6C7DCDF9791AA2BB0D80A96971681BDD278AB374BC68637A3A7231AB5B421626A515E09F8127C3E38D36E9726542EC5978B5CF0F8AFE073B2ABBC0EC78D998B9F5A9E0E5537C76DFD496EFE0675BADF75D4E2897258A706E325D928BD9AF7A37781C55AB6134A790B2ABECE5C85CCF6F0DFB40EA4089E071B605CF97329B7125DF2FEB21F15D57BD125C7CAA72EAF498B6D7754FB275C934C0CE000000000000000051BD97FAE88D5EB1AF6268D4A7912E7B66B7AE88759C978EDDCBCD9CF357E20CED624E3759E8F17BB1E1BA8FF00CDF79FB4098EA7C658186A51C24F36F8FDC7B569F9CBBFDC42B51D7B52D5538E5647254FFB1A7D587F17EF66B767EE2F8A02854002854000000000000002896C65C6CBBF06F56E2CF965FAC9F58C97835DE6328D6E04D34BD4EAD4697D157910FB75A7D9E6BC8F7EE73FC7BECC4C985F449C6D83E8FB9AEF4D77A64EB16F86561D79157D9B176783EF5F103391CD575E94672C7C0924D3DA772F1EF517F99E8D7F5196350B1A97CB7DAB7935DB187979BFC11154B7000002E00000000000000014D8BB1F23230EF56E1DF6D16AFD6AE4D7FF00BEF2850096699C7195572C354A237D6BA3BAADA33F7AEC7F226781AA61EA95F3606442DF186FB4A3ED5DA720D8AD529556AB2A94A16C7ECCE0F66BD8C0ED6081691C6B65328D5ACAF4907D3EB15AF592FDA8F7FB57C09C537D5918F5DD8F642CAAC5BC6707BA680CA000046F8938963A541E36172599F2EBEB758D4BEF4BCFC17BDF4367AD6A51D2745C8CB96CE715B551FBD37D8BD9E2725B2CB2EBACBB226ECBED9735937DB27E2056F9D97DD3B6FB276DD37BCEC9BDDC9962E85C00A15000000000000000000000000000A6DB921E18CB4A7958D63DA297A65EE5EB7F123E64C6B9E3DB6CE3FAF44EB6BC7996C032F26599996E44FB6C93697847B97C0C28A456E5CBA01500000000000000000000000000016B47BF49D5F2F46CAF4B8924EB93FD2532FB13F7773F33C4500EB7A4EAB8DAB61ABB165D5749D72FB55CBC1AFC1F79B138EE99A8DFA567C7271A5E53ADFD9B23DE9FE4FB99D630726ACEC0A72B1E5CD55B1DE3E2BC53F34FA0110E3DB9CD69F8EFA26A76B5E6BA2FC590A5DE4A78E6527ADE1C5F5E4C54F7F6CA5FC08B817000000000000000000000000000000000000A1500000000000000000000000000000000000136E02CD93AB370A4FA57B5D05E1BF4697BD27EF21248382ED75F14462BB2DA2717EED9AFC00CDC711DB5FC5978E225B7FCD2231B12DE3CAB97334EC8DF7E7AA75FBD3DF6F99114C0B8000000000000000000000000000000000000000000000000000000000000000000000000DD708FFC6185FBB67FD8CD29BDE0FAE53E29AA51EBC95592F96DF981FFD9)
INSERT [dbo].[Пользователи] ([Код], [Сотрудник], [Логин], [Пароль], [Фото]) VALUES (8, 108, N'strelkov@namecomp.ru', N'gynQMT', 0xFFD8FFE000104A46494600010100000100010000FFDB0043000504040504030505040506060506080E0908070708110C0D0A0E141115141311131316181F1B16171E1713131B251C1E2021232323151A26292622291F222322FFDB00430106060608070810090910221613162222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222FFC00011080140014003012200021101031101FFC4001C0001000203010101000000000000000000000506010407020308FFC4004210000201030104050A04010C03010000000001020304110506123141215161719113142232425281A1B1C13362D1E13515162326547382A2B2C2F0F125637292FFC40014010100000000000000000000000000000000FFC40014110100000000000000000000000000000000FFDA000C03010002110311003F00FD9400000000000000000000000000000000000000000000018032000000000000000000000000000000000000000000000000000000000D4B9BFA1674F7EE66A1F979F810175B52E7956743752F6AAF1F002D4685C6AF656D9F295E0DAE50F49FC8A45D5EDCDDCB3715E73EC7C17C11AC80B755DABB68B6A8D0AB35D6F1134A7B595F852B7A715F99B6578C6009A96D26A13F5674E38EA81F1FE706A7FDA17C29C7F42357330049FF0038353FED3FE48FE87D23B47A8AE33A52EFA644002C10DA9AEB3E56852967A9B46ED1DA8A0E5BB5E854A78E716A48A9003A0DBEAD6575D14AE21BDEEC9EEBF99BABA5741CC4D9B6D42EACE4BCDEB4E315C639CA7F060746055AD36A65951BCA29FE7A7C7C09EB5D42DAF639B7AB09F5C53F4977A036C0000000000000000000000000000000000000000021754D76959274E8A556BF38AE11ED7FA0127757746CE8BA97351420BAF9F72E655AFF0069AA56CC2C60E8AE1E525EB35DDC885B9BBAF7959D4B9A8E72E59E5DC7C40F5294A72729C9CA4F8B6F2C2E660CAE60600000000000000000000000065731094A9CD4A127192E0D3C05CCC813BA7ED356A3E85EA75A1EFAE892FD4B450BCA1754954B6A91A91ECE5DEB91CE707D6DEE6B5A57552DEA4A125D5C1F7F581D21192174AD7A95F3F2570952B94B867A25DDFA13400000000000000000000000000000002A1ADEB9E73BD6D66FFA0E13A8BDBEC5D9F5FA87DB58D7DB72B7B17D1C255973EC8FEA56B2DBCB6DB7CD99007900000000000000000000000000000000000000002CDA36D03F46DEFE59E51ACFFDDFA95932B981D353CAE83253F44D6E56D385ADCBCD07D1193F63BFB3E9F4B7A79595C00C8000000000000000000000436BDA9F98DB2A54B3E71557A38F65737FA011FB41AC6F6FD95AC9F4745592FA1590B98000000000000006C5A59D6BDADE4EDE0E52E6F925DAC97D3767BCEF4E55EB5474E753A69E2394975BEBC965D3ECA161651A30E97C652F79F5810B69B2F4D74DDD694FF2D3E85E24BD1D2ECADF0E95B53CFBD2597F33751903E13B3A15A0E3568D2947A9C111373B316959CA5465528C9FBAF2BC193AB99902B5FCD2A3FDA67FFE11F486CADAACEF56AEFB9A5F62C200AF54D95B5941A856AEA5C9C9A6BC30556E6854B5B9A946B471283C77F69D2CF955A50A8D39C212C7BD14C0E680E952A509C1C2A42328F5496515BD67408D3A12B8B08F4C7A674970C75AFD00AC800000000000F458B67B58DC71B2B99369BC529BFF004BFB7815D3CB4074F042683A9BBDB674AB7E3D24B32F7D75F7936000000000000000007C2EAE616B6D3AD53D582CF7F5239F5CDCD4BCBAAB5EB3F4A6F29752E489ADA5D4155AF1B387AB4FD29F4F1972F0FB95F4060000000000000D8B1B77777F468278F29249F773F91AE58365E8467755EBBE9F271505DEF8FD3E605B231508284162315848F6793D000000000000000000000145D734E8586A0E54BF0EBE649753CF4A22896DA0A3711D4E756B6654E7F8735C31D44480000000000001F6B5B8A96B730AD464D4E0FC5734743B4B9A779694EBD1798CD67B9F347375CCB06CD5FF0091BA76937E855E9876480B70000000000001AB7D711B4B3A95E6B3E4D6577F2368AA6D4DD6FCA85B2F563E9C975BE0BEE05725294EACE737994DE5BEB7CC2E66401E4000000000000B9ECCD18C348735C6A546FEDF62985EF428EEE896FDA9BF9B02500000000000000000000000044ED05253D0ABB7EC6249F6E4A322FF00AD7F02BCFEED940000000000000032B9998CA50A919C1E251794FA9AE06173320743B0BB8DED8D2AD1E328A6D753E7F3C9B454F656EF76A57B67C1FA705DBCFEC5AD0190000000039C5EDCF9DDFD7ADECCE5E8F77045E756B8F36D26E269E1B8EEAEF7D073E0000000000000000005F7455FF84B5EC863E6CA1179D9F9F94D0E863D9CC7E6C09600000000000000000000000119AF4B7741BAED8AFAA286B8177DA478D06B76B8AF99485C000000000000000000D8B1B995A6A142B47D99ACF6AE94FE474647313A068F5D5C6916F3E3251DD93ED5D006F80000000AF6D5D6DCD3E8524FF12A671D692FDD1512C3B572CDE5BD3C74420DF8BFD8AF0000000000000000002DDB29514B4FAD4D71854CBF8A2A24FECA57DCBDAF473F8B1524BB57FD817000000000000000000000000105B52F1A44175D55F46535702D5B5D2C59DB2EB9BFA1550000000000000000005B764EBEF5857A59FC3A99C7527FF4CA9161D94A9BB79714F1953826FE0FF702DC000000028FB492DED727D1C2115FF3C48824F5FF00E395FBA3FE94460000000000000000002E5A1E97429585BDCEEE6E671DE737C70F97714D3A06912DFD1ED9E38412037C00000000000000000000000446D05946EB49A951FE2504E717F55E051933A0EAF3DCD1AEFB69B5F6FB9CF501E8000000000000000098D9B78D6E2BDE84910E4A6CFF00F1DA1DD2FA302F60000000289AF7F1CB8FF0BFF2A23495DA38E35C9F4F1A717F52257303000000000000000005D3666B6FE8CA9B799539B5DCB8FDCA5939B3579E42FE5426F10AEB0BFF00A5C00B980000000000000000000000084DA5AFE4B48DC4F12AB34BE0BA7EC52C9CDA4BC55F508D083CC682C37F99F120C00000000000000000129B3FFC768774BE8C8B26366E39D6A2FDD849FC80BB80000000A8ED55371BDA137C254F1E0FF72BEB996DDABA5BD6342B633E4E6D37D8D7EC8A8A6000000000000000000CA6E2D34F0D733000B6ECF6AD5EEE72B7BB96FCA10DE553837D3CFC4B0A28FB3B2DDD6E1D1EB424BE3FF11778BE207A00000000000000002BBAFEB15ACE71B7B7F45CE3994F9AE9E4588A3ED24F7B5B9A4BD58453EF022379C9B6F8830B99900000000000000000058365A9BF3CB8ABCA3051F17FB15F2DBB2D45AB1AD5A5D3E52785DC97EEC0B1000000008FD66DFCE747B8A49665BBBD1EF5D273E5CCE9F249AC339DDF5B79A6A37147846337BBDDC501AC0000000000000000000362C6E1DAEA16F57946A2DEEEE674539917AD02E2771A352753A6506E19EB4B8012A0000000000000000739BFB9773A8DC557C2536E3DDC8B8EBF713B7D1AABA7D129B50CF527C4A2736FAC0C8000000000000000000017FD22D9DA6916D4A5EB28665DEFA4A569F6AEF350A3412CA9C96F3EA5C5FCB27444B006400000000AAED45AFF004B4AE60B8ADC977F2FB96A356FAD55E58D6A12F6E3E8BEA7C9F881CE81EA70953A9284D62517868F2000000000000000000BA6CBBCE8AFB2ACBEC52CB8ECB3CE9553B2ABFA2027800000000000000041ED43C68BDF563F72965CB6A5E34AA7FDEAFA329C80000000000000000000663194EA461059949A8A5DAC0B2ECB5A3DFAD7335D096E45F6F3FB1693574FB58D95852A11F6574BEB7CDF89B40000000000000543696C3C8DCABBA6BD0ACF13C2E12FDD7D0AF9D22EEDA1776952854F56A471DCF93F81CF6EADEA5A5DD4A1557A5078CF27DA80F8800000000372DB4CBBBBFC1A13DDF7A4B7578B262DB65253C3BBAF15F969ACFCD815B362DECAE2EB1E428D49E79A8F478F02EB6BA2D95A3CD3A2A52F7AA7A4CDFC746382EA480A95BECBD7A914EE2AC29BF762B78B1E9DA7D3D3ADE54E94A52DE7BD2949F4B66D2583D203200000000000000034B51B0A5A85054ABB9A8A794E2F0F3D2572BECAD78B93B5AF0AB15C14FD165BF030073AAF61756DF8F42705EF35D1E26BE0E9B823EE746B2B9DEDFA318CA5C650F45BF002858182C75F65A71CBB5AE9AF76A4718F8A222E34CBDB659AB6D5377DE8ADE5F20348000000009ED9CB075AE6575517A14FA21DB2EBF82FA90F6B6D52EEEA9D0A2B329BC77769D02CAD6369694E8C3D58470BB7ADFC40D900000000000000002135ED2DDEDAF95A385714BD5FCCBA89B3007328465524A308B949F24B2C92B6D0AFEE7A551F250F7AABDDF97125759D2E76B71FCA762B76707BD514797E6FD7BC96D275486A56AA5EAD65EB47EEBB0089B7D968A966E2BCA4BAA0B0BC499A1A659DB7E0D082ED6B2FE66E990306400000000000000000000000000000000000000346E74AB3BA6DD7A10949FB58C3F1443DC6CB41A94AD6B4A3D51A9D2BC4B30028371A25FDBC1C9D07523C9D27BD9F871341C251789C5C5AE4CBDEA9A9434EB7DE6F3525D108F5F6BEC22B46D32ADDDCBD4B515BD293CD34D717D7DDD406F685A5BB2B6752AA5E5AAFAC9FB2BA8993C2583D80000000000000000000018E587C1956D4B4EADA55D79F69ADAA69E6505D3BBD7FE1FF009DD6A318CAE903434DD4E9EA34331F46AC7D787DD7612056752D16A5AD4779A46F46A279F2707C3B973EE3734AD769DEFF004570953B95CB3D12EEEDEC026800000000000000000000000000000000000000008DD4B56A3A753C4B32AD2F529AE2FB7B8D7D535CA7689D1A189DC73E9E8877F6F61A5A668D52EAABBED5949CA5D31849F4BEFECEC03E7A6E9D5754BAF3ED433283E98A7ED7C3DDFA96A4B0B0BA11882518E22B091E800000000000000000000000000000C6086D4B42A57A9D4A38A7719CEF63A25DEBEE4D002AB69ABDD695515AEAB4E7287053F6976E7DA458EDAEA8DDD3F296F353875AFBAE42E6D28DE5174EE29C6717D6BA5777515EB8D0EF34F9BADA4D594BF2B7E93FB3F88168056AD768F767E4F52A73A751744A6A3C3BE3C513F42BD2B8A7BF46A42717CE2F207D80000000000000000000000001F1AF734ADA1BD5EA4611EB94B19FD480BCDA553CD2D3A8CEA547C24D3C3EE5CFE204FDC5CD2B5A4EA579A841716CADDD6B375A954F37D2E8CE2BDA9F078FF68B6D0EF350ABE5B57AB2DD7ECB7E97870458EDACE8D9D2F276D0508752E7DEF98117A5E874ECDF94AF8AB70DE77B947B93267704560F60600000000000000000000000000000000000000006A5E58DBDEC376E29467DB8E9F1206A6CE56A153CA69D7528B5C9BDD7E2BF42D03005556AFAB58271BEB675231F6E4B19F8AE837ADF69ACAAA5E514E949F1DE595E289CC1A373A3D95C26EA508EF7BD15BAFE407D68DFDB5C4734ABD2927D5346D15DADB2D6D2CBA55AA433CDA4CF8AD9FBEA79F35BEC41FE69202D00AB2B3D7E1EADC6F67FF627F533FD645ED47E2A005A0157FEB23F697C14079AED04FD6B851C7E74B3E080B41AF5AF6DADF3E715E9D3C7294967C0AF3D0350B958BBBF5BAB865CA5F747DE8ECB5AC31E56B54AB8E384A3903E971B536349354554AD25D4B0BC59A5FCADAB5FF4595B3A74DFB58CFCE5D04DD0D26CADF1E4EDE0DAE725BCFE66EA5858E4056A96CE55AF3F29A8DD3727C77259978B276CEC6DACA18B5A308678BC74BEF66C28E0C81E8000000000000000000000000000000000000000000000000000000060C800000000000C1900000000000000000000000000000000007FFFD9)
INSERT [dbo].[Пользователи] ([Код], [Сотрудник], [Логин], [Пароль], [Фото]) VALUES (9, 109, N'belyeva@@namecomp.ru', N'AtnDjr', 0xFFD8FFE000104A46494600010100000100010000FFDB0043000504040504030505040506060506080E0908070708110C0D0A0E141115141311131316181F1B16171E1713131B251C1E2021232323151A26292622291F222322FFDB00430106060608070810090910221613162222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222FFC00011080140015103012200021101031101FFC4001C0001000300030101000000000000000000000607080103050402FFC4004D100001030202040A0409080807000000000001020304050611071221311741515561718192A1D11322429114152332335282B1C11624629394A2B2E1436364727374C2F02527353637A3B3FFC400160101010100000000000000000000000000000102FFC400191101010101010100000000000000000000000111310221FFDA000C03010002110311003F00D9600000000000000000000000000000000000001E457627B2DB1DAB5F75A281DF55F3B75BDDBC0F5C112E12B0973DD3AF4A35CA9F71EA5BB14D92EB26A5BAEB473C8BB98C993597B3781EC800000000000000000000000000000000000000000000000000000000000000000000000007C178BC51D8ED73575CA548A9E24ED72F135138D578900FB25959044E9267B238D899B9EF7648D4E5552ABC4DA63A3A37BE0C370B6BA66EC5A89555B122F426F778215CE32C7B70C5750F8B37535B1AB9C74A8EDFFA4F5F697A3727890F2C896A4177C637DBEBD56E5719DD1AAEC86277A38D3ECB762F6E6783C6AA8888ABC688709C6725907190CBF9759C808B6345D8EEA62B87C4F7BABF4944E895D0CD50FDB12B53356AB97D954E5DDDA4EEB34A985A8A758FE1AFA854DEEA789CF6A7DACB25F799B026C22EB4CDBB49D85AE52A46CB93607B9511A954C58D157AD767892F648D91A8E8D51CD5DA8E4DCA636C894E12C7775C2B33590C8B516F5766FA491DEAAF2AB57D95F0E852612B5183C7C3D8868712DA9B5D6D915D1AEC731DB1F1BB8DAE4E253D80A000000000000000000000000000000000000000000000000000000000000EAA9A98A929A49EA646C70C4D57BDEF5C91AD4DAAAA663C738C6A3155E5CAD57476E815529A15DE9B7E7AA7D65F045CB973B034C78A563821C3F48FC9D2A24B54A8BB51B9FAACED5DABD197294A9AF2968002A0000A000000000C8003DEC2B8A2B30B5E995748AAE85D936A29D57D595BE69C4BC46A0B5DCA9AEF6BA7AFA17A494D50C47B1DD1C8BC8A9B8C825A3A21C56B43767D8EADDF2158AAFA7555F9B271A753BEF44E532917D00808D000000000000000000000000000000000000000000000000000007554D4474B4B2D44CBAB142C57BDDC88899AA9DA42F4A15FF00D1DDC551727D4A369DBF6976FEEA2819DAF17496F77AACB8D439564AA95CFCBEAA712762649D87C29B0035232000AA00000000000000001D904F2535447342E56CB1391EC72713917345F7A1D6088D6F87EECCBDE1DA2B8C6A9954C48E544F65DB9C9D8B99EA158685AE4B55842AE8DEAAAEA3A95CB3E26BD3593C758B3CCB4000000000000000000000000000000000000000000000000000015569BA7D5C336C833CBD255EBF758EF32D52A1D3927FC36C6BFD74A9FBA9E405240036C8000A000000000000000000088B6F41F3EA5CAF70E7B1F144FCBA95C99F89782144684533C49755E4A56FF001A17B27199595C80028000000000000000000000000000000000000000000000000559A6F835F09DBA6CBE8EB32CFA158EF22D32BED3041E974752BF2CFD0D4C4FF1CBF1033A800DB200028000000000000000000222DED07C3F9F5EE74DA88C8999F4AAB972F042ED2A4D07D3A36CD79A8CBE7D4B19DD6E7FEA2DA4E332D39000000000000000000000000000000000000000000000000000021FA4D8925D19DE51DEC46D7FB9ED526045F484DD6D1C5F13FB32FDE8065C001B640005000000000000000000044681D0BC4D6E049E44DF256C8ABD8D6A7E05949B0AFB43E9FF002E62FF00332FF1160A6C32D0000000000000000000000000000000000000000000000000000043F49B3A41A36BBEB3B57D231B1A74AB9ED4260537A68C431BA1A3B1412356447A5454B5173D54DA8C45EBCD57B13940A600069900055000000000000000000044682D0C54A4B8167875B37C158F454E4CD1AE4FBCB24A074397F8ED9882A6D550F4645714458D57724ADCF676A2AF6A217EA2EF32D390000000000000000000000000000000000000000000000000001E3E267DDE3C3B54FC38D85D726B738DB32668BCB974F267B0CA95D255CD72A992E4E95D58F91566599AA8FD6E3CF3FBB88D8643F1768F6D58B18B2CC8B4D7144C995712267D08E4F693ACB0664049B12606BCE187BDD5D4EE929117D5AA8115D1AA74F1B57AFC48CA6D2C6400154000000000000000000F66C185EEF896A11969A37BE3CF274EFF00563675BBF04CD488F1D8E7B6563A25547B5736AB77A2F12A749A8302CB7F9F0D4526286B12A5DF479A6522B389644DC8EFF6BB4F2B06E8CADB877D1D5D72A575D1BB5257B72644BFA0DE5FD25DBD44FCCEAC8000280000000000000000000000000000000000000000000000000003F2F6A3D8AD7222B5762A2A668A422FDA2CC3D7AD692285D4152BB7D252E488ABD2CDCBE04E4019FAEFA1BBDD1B9CEB5CF4D5EC4DCD577A27AF62ECF121771C357AB57FD46D7590A22E4AE58955BEF4CD3C4D6A7E722A58C6C0FA2BB25B8D539AB9A3A77AA756B29F39A0000000047A14164B9DD32F8B6DF57559F1C50AAA7BF7132B5688711573916B529E822E3591FAEFEEB73F1542E6C15FF60D8BFC945FC2848536219D557B65D12582D9AB2DC3D25CE74E3A8D91F713F1CC9FC30C7044D8E08D91C6D4C918C4C913A90EC4404E91C80802800000000000000000000000000000000000000000000000000000000000079B7FB94767C3B5F5F2AE494F039E9D2B96C4ED5C8F48A7F4CB8998DA182C14CFF9595526A9C9773136B5BDABB7B1394414A6B6B2AAAF6F58080D44000500001A5745F5895BA37B664BEB53A3A072726AB972F0C89AA71947E86310B296BEB6C953264956BE9A9F35D9AE89EB353AD325FB2A5E09B0C521BC6472A70815C80000000000000000000000000000000000000000000000000000000000003A61AA86A1D23609A391D12EABD18F476AAF22E5B94EE023D8CB10BF0C617A8B9454FE9E462A31A8BF35AAE5C915DD199976BAB6A2E5709EB2B6574B513B95EF7B976AAAFF00BEC4358DFAD6CBD61EAEB749B1B530B988BC8EE25EC5C94C932C524134914CD56C91B95AE45E254D8A85895F8001A00000000476D3544B49570D4D348E8E785E8F8E462E4AD726E54347E8FB1B262DB63D95312C771A46B7D3EAB7D47E7B9CDEBC976716466B3446882CDF166076D5C8CD59AE322CDB77A3136353C157ED19595612719C9C6475CD3C74F0BA59E46471B53373DEB922272AA907683F2C7B64623E3735CC5DCE6AE68A7E828000000000000000000000000000000000000000000000F3AEF7BB758A896A6EB57153C5ECEBAED72F23537AAF51535FB4D4E911F161CA246A6E6D4556DCFA5188BF7AF601743DE8C6AB9CA88D4DEAAB922114BBE9170DD995CDA8B8C534CDFE8A97E55DFBBB13B550CEF77C4F79BE48E75D6E33CED55FA3D6D562753536781E46596E2E25AB8AEDA6E7AEBC566B5233925AB7E79F4EAB7CC805DF1CE22BD239B5B7395227668B0C1F26CCB9324DFDAAA4749568FAC2B7FC6D450BD9AD4B4CBF089F6669AAD545445EB7648388BE701587F27F06D1D23DBAB51227A7A8CF7FA476D5CFAB6276128386A64872468334E94ACDF14E3DAA918CD586BDA950CCB6ED5D8E4EF22AF69A58AC74CD664ABC2D4F738D99CB6E97D65FEADFB17C51ABEF105040035198000AA0000FAED9412DD2ED49434E9F2B532B636AE5B955779AE292963A3A2829A0446C5046D8D8D4E2444C90A1B43965F8762C9EE12B5162B7C3EA2EFF00947E689EE6EB7BCD006681D3554D1D5D24B4F3B51D0CCC563DABC6D54C950EE41C445657ABA9BCE0AC435B6DA1B855533E9A556FC9BD51AF4F65DAABB1734C977128B5E99EF74BEADCE9696BE3E5CBD13FDE99A7EE9E969AAC7E8AAE86F50B3E993E0F3E49ED266AD5F7669D885426A25AD0B6AD30D82B511B5EDA8B7C9FD6B75D9DE6E7E2884EADF74A1BAC1E9ADB59054C797CE8644765D796E3201DD4F3CD4D2A494D3490CADF9B244F56B917A150988D8E0CE962D2CDFAD5AACAF732E7026C54997564CBA1E89F7A296EE18D21597136AC54F2AD3D72A6DA59F6397FBABB9DD84692E000000000000000000000000000000002118F71E4384E91B0D3B5B35D276E7144E5D8C4CF2D777472271F613591E91C6E7BBE6B5335EA3245FEEF2DF710D6DC6755574F22AB53EAB13635A9D4991641D774BA56DE6B5D5774A992A2A5FBDEF5F044DC89D0879E9B0FD02CF8CF4001542FCD0D5852830B4B74959AB3DC1FEA7F84D5546FBD73528FB55BE5BB5E292829FE96A656C6D5CB3CB35DAABD0899AF61AD686923A0B7D3D253B5190C11B63635389113243347D4002287C576B7C575B3D5D0D4222C35313A376CDD9A659F61F68031CD5534B4559353543756585EE6393A515517EE3A89F6966CA96CC6F25546DCA1B8B126D9BB5D363BEE45ED2026A32000AA007DF65B63AF57EA2B6C68BAD573363CF9117E72F6266A41A03455654B4E03A695EDCA7AF55A87AAEFC97637F7513DEA4ECEA823643032289A8D89888D635389136221DA67AB04DE72709C67207858B6CADC41856BADEE4459248D5D12F2489B5ABEF44F799495AAD554722B5C8B92A2F129B2550CDDA4FB1FC4D8D279A26E54D704F84315376B2AFAE9DEDBF68B1106001A0C835558F4735CA8E6AE68A8B92A280445E3A35D23C9719A2B2DFE457D63932A7AA72ED972F65DFA5C8BC7D7BEDA431B472490CCC9A07AB268DC8F8DE9BDAE45CD14D6B87EE7F1CE1BB7DC766755035EECB723B2DBE3991657A8002280000000000000000000000022BA42BBAD9B025C6762E534ACF4112FE93FD5CFB11557B0CBB9175E9C6BD5286CF6F6B953D2C8F99CD4DDEAA2227F1294A645896B900150001556BE866C495175ADBCCECCD94A9E86055E37B93372A74A2649F68BCCC936FC4578B5527C1EDB73AAA583595CB1C2FD56AAAEF5C8EC7628BFCBF497CB9AE5BBF3A7F99946B306427DDEE7265E92E75EEE5CEA5EB9F89F3BEAEA5F96B54CEB972CCE5FC498D361FA467D64F79FA431B3279639992B257A4B1B91CC7A2ED6AA2EC5434F602C52CC53865952E544AC8728EA59C8FE544E454DA9DA9C43125787A5FB32D7E0E4AE8999CD6E93D22AF1EA2FAAEFC17B0CF686C1AFA38EE16EA8A3A844586A23746F4E854C97EF323D7D0CB6DB9D551542652D34AE89DD6D5C8B07CC003405A7A17B3A55621AEB9C899B68A248E3727D77EFF73517BC558697D1959BE27C03429246ACA8AB4F84CA8BBF376EFDD4692D133CB2438739ADF9CE44EB53E6B95C29ED36BA9AEAD7A329E9D8AF7B97913F132A622BFD4E23BFD4DC6AB34F4AB9471E79A46C4F9AD4FF007BD5578CCAB5AA2EF39CCC70DA899BF3679933E49153F13E865D6E31E7A970AC6A7236A1E9F896C4B5AF8AF74B361F8D706BAB216FE716D72CC8A89B75373FC325FB2518DC4B7C667A979B8A67FDA9EBF89DAEC5D889F1491BEF75EE648D56B9AE995515177A2A28478A0034A00001A0B439775AEC1D2D03D555F6D9751BFDC77ACDF1D64EC33E965E862BFE0F8C6AA8DCBEA55D2AAE5FA4C5454F057128D000032A000000000000000000000000CFBA66A9F498DE9E04DD4F46DD9C8AE7397C8AD89B695645934997045FE8E389BFB88BF89092B2000D280000000000004970462A930A6258AA955CB4537C9553136E6C5F693A537FBD38C8D00363432C7514F1CD0BD1F148D4731ED5CD1C8BB5150A034C3664A0C611D7C48890DC62D6544FAECF55DE1AA49743F8B925A55C3B5F27CA42D57D239CBF39BBDCCECDE9D19F2120D2C5992E78126A98D9AD3DB9C93B72DFA9B9FE0B9F61919CC00588F5B0D5A1D7DC4F6FB6A266CA895124D99E4C4DAE5EEA29AC9AD6B188D6264D44C9113890A47429666CF71B85E256A2A53B129E2CD3DA76D72F622227DA2C2C7F8AD98570DBA589C8B70A9CE3A562FD6E372F435173F71056DA5DC5EB5D724B0D0488B4B48E4754B9BEDCBC4DEA6FDFD455872E739EF57BD55CF72E6E72EF72F1AAF49C0000140005500000000095E8E6A3E0DA46B3BB3FA495625E94731C9E4450F6F082EA63AB13F7E55D16CFB48841AC00065400000000000000000000000199349DFF00936EF9F2C7FF00CDA43C99E9499A9A4DBA6DCF59B13BFF005A10C3519000550000000000000000775256CF6FAE86AE8E458EA207A3E37A712A1A870E5EA93186144A8635BA93B161A9817D9765939ABEFF0072A19609A68E7167E4CE2346553F2B6D6AA473AAAFCC5F65FD8BBFA17A0CA445EEF6D96CF7DAEB74F9EBD2CAB1E6BC688BB17B53253E32CDD3259D29B12D2DD214CE3AF8F51EA9F5D89F8B55BEE21D846CDF1F62FB6D02B738DF323E5FF0DBEB3BC132ED02FEC0D6E8B0C68F697E14AD872896AAA5CBB11AABEB2E7D499276143631C4D2629C4B3D6AEB3695BF274D12FB0C4DDDABBD7AF2E22C3D2FE2E46B7F272824F59C88FAD7357726F6C7F72AF614D800093603B152623C6305BEE0B2A53BA27BD5627EABB36A265B4B608C8342703D86B96BFF0068FE473C0EE19E5AFF00DA3F90D567A0684E07B0D72D7FED1FC8E781DC33CB5FFB47F21A33D02EFC47A2DC3F6BC2D73AEA65AC59A9A9DF2B35E6CD3591155334C8A3D144A3900140F5F0BB75B19D91BCB5B0FF001A1E41EEE0C67A4C7B626E797E791AFB973FC08357000CA80000000000000000000000033A697E1F45A4273F2D9352C6EF76B27E057E5ADA6EA6D4BF5AAA78A4A6733BAECFFD4552564001A5000000000000000000005914F74FCACD165659EA975AE9636B6A69DD9E6E9616EC5ED46AAA2F46AA9D580EB21C2F87AF389A78DAF9F651D0B17FA491511CA9D5F373E84521369B94D67BBD3D7D36D92176D6AEE7B57639ABD0A99A2F59F45DAE4CA88692868DAE8EDF42D736163936AB9CBACF72F4AEC4EA6A19479F51532D655CF535323A49E77AC923DCB9AB9CBB554EA00B601ECE18BFCB866FECB9410473BD91BA3F4722AA22A3BA8F181556B70DB74E68A2FD73C70D975E68A2FD6BFC8AADBC6726516970DB75E68A1FD6BC70DB76E3B4D0FEB5E55401AB1EEDA5DB95D6CD596F96D9491B2AA1744E7B647AAA22A2A669995B21FA38C8B22B90014096E8D69FE13A49B4265F46E7C9EE639489163686E93D3E3A92A176253523DD9F4AAB53F1520D0A0032A000000000000000000000000A9F4DD46B261FB5D5A26690D4AC6E5E873557EF6A14626C34C693683E1FA3AB9A2266FA76B676F46AB9157C333332719632E400500000000000000000000000000000000000000000000000002E6D07D1AA32F55AF6A67AD1C0D77522B953C50A64D1BA24A0F81E8EE9A554C9D5923E7ECCF553C1A84B44F800468000000000000000000000001D5514F1D552CB4F3B51F14CC563DABC68A992A7B88B70698479920EFBFCC9700223C1A611E6483BEFF31C1A611E6483BEFF00325C0088F0698479920EFBFCC70698479920EFBFCC9700223C1A611E6483BEFF0031C1A611E6483BEFF325C0088F0698479920EFBFCC70698479920EFBFCC9700223C1A611E6483BEFF31C1A611E6483BEFF00325C0088F0698479920EFBFCC70698479920EFBFCC9700223C1A611E6483BEFF0031C1A611E6483BEFF325C0088F0698479920EFBFCC70698479920EFBFCC9700223C1A611E6483BEFF31C1A611E6483BEFF00325C0088F0698479920EFBFCC70698479920EFBFCC9700223C1A611E6483BEFF0031C1A611E6483BEFF325C0088F0698479920EFBFCC70698479920EFBFCC9700223C1A611E6483BEFF31C1A611E6483BEFF00325C0088F0698479920EFBFCC9351D153DBE861A4A289B153C0C46471B7735136221F40000000000000000003FFFD9)
INSERT [dbo].[Пользователи] ([Код], [Сотрудник], [Логин], [Пароль], [Фото]) VALUES (10, 110, N'smirnova@@namecomp.ru', N'JlFRCZ', 0xFFD8FFE000104A46494600010100000100010000FFDB0043000504040504030505040506060506080E0908070708110C0D0A0E141115141311131316181F1B16171E1713131B251C1E2021232323151A26292622291F222322FFDB00430106060608070810090910221613162222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222FFC0001108014001AB03012200021101031101FFC4001D000100010403010000000000000000000000030206070801040509FFC4004A10000103020305040607040708020300000100020304110506120721314151132261710814328191A11523425262B1C1728292F016244353B2D1E11725333463A2C2F1547383A3B3FFC40014010100000000000000000000000000000000FFC40014110100000000000000000000000000000000FFDA000C03010002110311003F00DCB44440444404444044440444404444044440444404444044440444404444045E6E258FE1584349C5311A3A4B0BDA699AD27DC4DD5AD51B5EC954F7FF007CB65B7F710C8F1F10DB20BED163576DBF268E153587CA91EBD1A1DAD64CAE7068C6A281C7954B1D17CC8B7CD05F28A0A6ACA7AC81B351CD14F0BC5DB244F0E69F2214E10111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101116BAED476D4F9A49F04C9B51A22692CA8C4A33BDFD5B19E43F10E3CADC48648CE9B5AC0F28492528BE2189B0D8D2D3BC00C3F8DDC1BE5BCF82C0D98B6BB9A730BDEC15C6828C9DD051F737742EF68FC42B4700CBB5F98EAFB3A6D2D81A7EB2A64DCC6F5F33E037F559872EE4CCBB81E996684623563FB5AA68735A7F0B380F7DCF8A0C5586E5FC771F797E178656D6177F6AD8C90EFDF3B8FC55D549B1CCDF52C6BA5A7A3A569FEFEADB71FC375991B8E691669000E000DC15631E77DE2831537619994F1ADC247FF009DE7FF0005E4623B24CDF87B1CF651415AC6FF00F0EA1AF77F09B159B7E9D3D4AA0E3BAB8DFE2835CB08CC38EE4FC54BF0CAAA8A2A98CFD6D3BC10D27A3D87711E62FE2B6232BEDB72EE2782325C7EAE1C331069D32C0439C1C7EF32C09B781DE3E6ADACE9835166EC38B266B22C4231FD5EAC8DEDFC0EEAD3D0F0E2161B8F216617EAFEA4C6D8DAEF9D807E6836A69F6A7932A65ECE2CC1461DFF0050B983E2E002BB696AA0ADA664F473473C2F176C913C39A7C885A515391730D342643402568E22199AF3F00575704CCF8EE50C40C98455CD433B4F7E0DFA5DE0F61DC47BBC906F3A2C67B37DAD61F9D87A8D6359458DB45CD393DD9C0E2E8C9FF09DE3C46F593101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011159DB49CE51E48C8F5789D98FAC77D4D1C4EFB733AFA7DC37B8F80283176DD769AFA56CB94F01A8D133DB6C4678CEF6B4EFEC81E4483777810399583F2EE0C317AAD7392DA28CF7DC38B8FDD0BC48DF518AE26E74CF74B5350F2F96579B9712497389E655F34D3C5454AC829C69898370FCCF9A0BDE9AB22A2A58E9E9236C50C62CD6305800BB03152558E311DDC570311E3BCA0BDFE953FC94FA54FF2558FF48FE24FA47C4A0BE862A7C7E2A37E34D681ADDA6E6C353AD73D1596311F12ADFCD38899292086E6CE7971F77FEFE4832A8C63C4FC554318E84FC5616C3F33D650599238CD0F36B8EF1E455D3499820AC8C76321D5CD8EDCE083217D2E7A95E363D47458ED396D4C7A6703B93B4779A7F51E0BC1188789F8AA5D88789F8A0B42A61ADC0715639AF7C55113B5C33C6E238707348FE4596D2EC976A51E72C38E1F8B398CC7E9997758D855307F68D1C8F223DFC0EED7DC43B2C4A91D0CA483C58FE6D3D55A3418956E5EC7E0AEA190C15F43287C6F6F223F30798E60A0FA0E3722B5B21E71A5CEF9469B16A4D2C90FD5D4C20DFB2947B4DF2E0475042BA50111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110169EFA41E7138D6D07E88A47EAA1C159D9385EE1D3BAC5E7DC34B7F8BAADACCCB8CC39772AE278BD4DBB2A0A67CE41FB5A5A481EF361EF5F3C27AD9F10AFA8A9AB797D4D4CAF96571E6E738B9C7E24A0F730A736189F23B8C96B6EE4BD135F7E0E2BC16D53432C4F0E09EB4D41EF0AE3F78AA5F8818E27BEE4D85ECBC4F591C9415755F504036D46C82E187102FA7638DEEE172ABF5E3E2AD9A2AB2212D26DA4AECFAD7E241EFFAF79AB7B14AC33D7120F71834B7DCAA7D6E8612A8CBB854D98B3461F85D38EFD5CCD613CDADBDDCEF70050656C2B6392635B35C37178E5929EBEA58E975386A8DCD2E3A438716EE037F8F058C718C1314CB7887ABE294D2534E37B5D7BB5E3EF35C3710B7EB0DA28B0EC2E968A998190D344D8D8D1C801656D66BC8785E62C2A5A6A8A58E46C9BCC6F1BAFC88237B5C3A841A63498E48F01B52EB11F6F97BD7A3EBA7EF95D9CFFB37AFC935B24AC6C951861361291DE878D9AFB6EF27703E1C15994B5EE8ACC79B8E4505D7EBA7EF2F3B14D3337B66D83DA3BDE2174FD65BF79706A45B994191761D9EFF00A279EE2A2AD934E158C39B4F31BF76392FF56FF0DE7493D0F82DD05F35A43A25EE9DC0ADEAD90E71FE99ECDB0FAD964D75B4CDF55AB278991961ABF7816BBDE82FF444404444044440444404444044440444404444044440444404444044440444404444044440444404444044441853D25B1D3866CA1B87C52699B16AB6425A0F18DB791DFE168F7AD378DFA5D70567EF4ACC61CFCD3977090FEED3524950E6FE291FA47CA33F15AEED7A0F4BB71D53B71D579FDAF8276BE083D1EDC2866935380E8BABDA8E8A3D7A89283BB0CBA24B1E054DEB07AAE84F1C94B57353CEC7473C2F2C7B1DC5AE06C47C95266DDC3E683B73CE5DB81E0B61BD1C3273A49AA334D643DC00C5485C3C7BCE1EF16F71EAB05E4FCB1559C73453617481C1AF70334807B0CBEF3E7C00F1216FAE5EC1E9B00CBF49875144238A9E30D00780B7FA20F7601AC9E814CF60736CA2659ADB0F8AAF5A0F0B1DC0E9B19C3E5A5AD8DAF63D85BDE17041E208E60F45A5DB50D9FD4645C747671BCE1752E3D93CEFECCF1D04F3DDBC1E63C8ADEB900736CACCCF994A9338653ACC3AB1BDF7B0E87DB7B48DE08F1045C7C39A0D0F8AA6C34BB9294D48238AEB62B86D4E0B8CD5E1D5EC2CA9A590C6EE86DC1C3C08B11E6BAED94841DC91E1C2E1674F460CD26833AE2197AA241D8E29076D10FF00AB1F1B79B09FE15803B6041165EC64BC7DD96F3DE0B8CB0BB4D0D5B249003C63BD9E3DED2E41F489152C787B439A41045C106F75520222202222022220222202222022220222202222022220222202222022220222202222022220222202221E083457D24AB4D46DDB11889BB692929E21FC1AFF00F3588C4960AFCDB9567AC6DD7359FB952D8FF86260FD1639126F41DAED4A76A55EB92F65D8DE7189954C028B0D7EE654CAD24CB6E3A19C5DE7B878ACB949E8D94061FEB1518C4927375E38C1FDDB123E2835BBB52AEFD9965A93366D2309C3836F00944F39B6ED0C20907CCD87BD5C79E361F8AE59A39EBB09926AEA7846A7D3BE2D3335A38916DCF038EEDFE0B366C0B678ECAF96E4C5B1387462988346A0E1BE365B733CF7DCF89F0418076D1873707DB46618236E98E591950DF27B03BF3BAB16929EA6BEBA0A4A185F3D5543C47144CDE5CE3C02C95B7A2FC476FD89D2D0C524F388E9A9C4710BB9CFEC81B01CCEF598B631B1E660113316C6A36498A48DD2E278440F1634F9EE73B9F01CC90BA363BB378F2660025A8B3F11A8B3A6900DC5DD07E100D875DE79ACB71B6C2E547186B00006E1C02AC48825BA5D45DA782769E0825BA86616DE079AE7B41D152F7070B20D53F494C9A286B28B33D1C5A619ED4F53A4703BCB5DF98F785AF024216FE6D3F2FB332ECC71CC3DC1A6534CE921078EB68D4DB78DC2F9F7DA141DAED7C3E6A8D5B88EA2CBAFDA787CD3B4F0F9A0FA35B28C6BFA41B22CB58839DAA57D132394F57B3B8EF9B4ABD9605F456C5FD7F6475542E7EA7E1D88C8C03A35E1B20F9B9CB3D2022220222202222022220222202222022220222202222022220222202222022220222202222022220222E1CE0D049DC00B9283E6EED30CB89EDBB3632987692CF8CCB0C4DBFB47B42C03E2166ACC3E8B8CA4CA4D9300C5EA6A33041103253D406886A1E06F6B0800B0DF70BDC1DD7EAB02E0F8AC55DB68A1C4A775E2A8CC11D438F83AA43BF55F45AACDA477ED3BF341636CA68E3A5D94E58222D35070F8C4BAC779AE1705A6FC2C41DCAF86B575A10D6B0063435A3801C38AECB1D60823A8A48AAA074530D4D3C3A83D4292189B040D8D80358D16000556B0A973AED2020C5394F6634F0E70C5F3462E5B538AE235524AE9CB7731A5DB9915F786E900171DE6DC86E595E30D630318D0D6B45834701E4A86EEE2A4B84125D2EA3D613584126A4D4A3D7E09AFC1049A9704EE2A8D7E0B82FDC7720A1CC13FD5BB83FBA7C8EE3F9AD4AD9B7A3F1CD6D9F17CCD59554386C93CACA4829C3449331AF737592410D6EEDDB8DF8EE1C76CC9DEA2A16358C8D8C686B5A2CD6B45801D107CFADA36517641DA1E2797DD31A88A9B4C94F33859CF89E35309F1B1B1F1055A7DA2CCBE942F8FFDB76966E7330BA70EF3BBC8F910B096B41B4BE8858A69C67366157DF2C1055345FEEB9CC3FE26ADBA1CD687FA2DE28EA4DB9C14A1D66E2187D440475203641FE05BE0107288880888808888088880888808888088880888808888088880888808888088880888808888088880AD0DA763E32CECA73362A5DA5F4D87CBD99FC646967FDCE0AEF5ACDE9799C1987E48C272C40F02A716A8F5899A0EF10C5BEC7CDE5BFC25069953CCFA6921921716C90B9AE6B8722DDE0FC97D33C171A8331657C2F19A53AA2C46963A907C5CD048F71B8F715F3143B8ADBFF45FCFF1627946A728D74A057613AA6A40E3BE4A771BB80EBA1E4EEE8F1D106C2C26ECF236530360BAB13B4978239A99AEBA093526A54DD2E82AD49A95374BA0AB526A54DD2E82AD49A95374BA0AB526A54DD705D6407EE6AE697DA1F01E6A2964FAA3B9591B52CFB16CF766B88E2AD958DC46561A7C3E3277BE77821A40E8D1779FD9F141A6FB67CC0CCC9B6ACCF5B0C9AE08EABD5A17756440460FBCB49F7AB06E1445EE71BBDC493BC93CCF33E678AE2FE283256C3EBFD436F39425D562FAEEC6FF00FD8C733FF25F4882F969912B1D41B4CCAD54C3BE0C5A95DFFEE683F9AFA963820E511101111011110111101111011110111101111011110111101111011110111101111011110111636CFBB6FC95B3D8DF1E2F8A47518901DDC3689C259C9E85A0D99E6E2105F78BE2F4380E0D578A63153152E1F47199679E5366B1A39FFA713C02F9A3B56DA0CBB49DA46238E3848CA3DD05142FE31C0DBE9BF89B971F1711C97ADB5ADB9E61DA9570827B61D8042FD7061713AE2E2F67C8EFB6FF007587217DEB15EBBF2413875977B06C7310CBD8DD262B82553E9310A3903E19A3E2D3C083D4117041DC415E4EBBAAB5D906EC6C936FF1E7FCC74D97F14C23D4B179A07BFD620943A194B1B73669DED246A36B9E1C5676BD97CD2C8B994E52DA16038E8243282B1924A3AC77D2F1FC25CBE943646C8C6BE3707B1C3535C0EE703C0F911BD04DAD3528AE97412DCAE2EA8D49A9049AD3528AE97412DCAE2EA8D49A905775C5D53A9717418EB6B1B56A2D986178749594135754E22F7B6182390476D005DCE26FDDBB80DC0AD2FDA06D1719DA2E61FA471A73238A10594B490DFB38184DC817DE49E6E3BCD874015EDE93B99DB8DED78E1D03F553E094ADA6239768EEFBFDFDE68FDD584B5D907635D973AD75F5A6B41EA6115060C7F0D95BBCC7570BBE1234FE8BEB32F91B42FF00F7952FFF007C7FE30BEB9202222022220222202222022220222202222022220222202222022220222202222022220D64F486DA2ED1B65B9868313CBB5B4AFCB58933B3ECA7A26C820A86F16EA16759CDB385CF2774583AA7D2BF69D345A21AEC229CFDF8B0F17FFB9C42DE8CED9370BCFB93311CBD8EC5AE8EB596D6077A278DED91A7939A6C7E5C0AF999B41C818CECD738D4E058FC443D84BA9EA1AD223A98AE74C8C3D0DB78E20820F041E9660DB0E7FCD31BE2C6F35E272C0FF6A082410464742D8C36FEF5628B5DC6C2E789E6552D78555D05574BAA1105774BAA12E82A3BC2DF8D80671FE976C870F151287E23847F50A904EF2180766FF7B34FBC15A0AB2D7A3E6D05B9276951D2E2128660D8D814B545CEB3637DFEAA43E44907C1C506FAA28D105770970A34412A289104A8A244122F2F31E3B4B9632AE278DE22E02970EA774EF04DB5586E6F993603C4AF442D5CF4A8DA133D5E8F24E1F28748FD35789693BDA05FB28CF9FB647EC20D64C5714A8C6B1BAEC4ABDDAEB2B677CF3BBABDCE24FE6BAA14439AAC7341CA2A538041EAE5C83D733760D4C05CCD5D046079CAD1FAAFAD6BE5A6C8283E95DB864BA5B5C1C5A091DE4C77687E4D5F52F92022220222202222022220222202222022220222202222022220222202222022220222202B2B693B33C0B69F959D84E6187BF1DDD4B5918025A67916D4C3E3BAE0EE238F222F5441F313699B11CD9B30AD99F88D2495D82B5DF558B52C65D13872D638C6EF076EE84AC68245F60A489B2C4F8E46B5CC78B39AE17047421617CE7E8C9B3CCDD24D51161CFC16BA4DE67C29C22693D4C64161F701E683E73F6960AA0F6DB8ADA8C67D0AB1A8A577F47735E1D5319F6457D3BE17795DBA81F8056E37D0DF686F9834E21971AC3F6FD6E53F2EC906BC9907254875CADA69BD11E1CAF94317C7F3C66C69A7C328E5A9753E1D05838B1A486F69275200F677DD6AA46D2F91ADEA83B406E513DB65DCECD512C778CA0DD7F47CDABB73AE5566058D4E0E63C2620C25C77D5402C1B20EAE6EE6BBDC79959B6F65F327286255983E7AC16B70BA9929AAA1AC883258CD88BBC348F22090473057D2E6CC1D23D8E696BDA482DE5B8F2413DD2EB8B5D3496F141CDD2EA8BA5D05774BAE3491C428A599B136EFF701C4A0B5768D9FF0FD9CE4BABC6ABF44B516ECE8A90BAC6A263ECB7F645AEE3C805F3C317C66BB3063B5B8AE2D3BA7AEAE95D34D23B9B8F1B741C80E400595BD25F14AEABDB2CF47593BDD4D434908A7809EEC41EC0F7587524DC9E7BBA058869E2D4CD5D507002A86E5308BDC9D9DFC1044A379B30AEC68BF82EAD41D2745D0676F44BC05D8BEDF29EB9CCD50E0F45354B89E01CE0226FF00FD0FC17D0E1C16A9FA17E5434593B30E66A88ECFC4EA9B4B038F131C409711E6F791E6C5B5880888808888088880888808888088880888808888088880888808888088880888808888088880B8B2E559BB4ACCF8DE4FC91558E65CC05B8ECD47DF9E8FD64C2FECBED3DB66BB511C48E972385885E365D7AEAEA5C36866ABC42A22A6A481A5F2CF33C3191B4712E71DC02D13C6FD3473A5644E660B82E0D86DF848F0F9DEDF2BB837E20AC239BF6959BF3F548766AC76B6BD81DA994C5DA6169EAD8DB6683E36BA0CDFE91DE90B0E7985F94F25CAF397992875657105BEBAE69BB5AD07FB3040373ED103801BF5D70FA7323CCAE166B770F15DAC3B2ECF50E6C958C3147C743BDA23CB92B89986F660358D01A38041E27627A20808E457BFEA07EEAEBD74029A82799DB83184DBAF2416EE5863AA33960F137DA7D740D1E6646AFA815346D9A57961B10E241E7C4AF9D3B15CB15B9976C197D9474EF969E82AE3ADAB781DD8E28DC1C493EEB0EA4AFA47170DE38A0F24BA5A73695AE78FBCD0A68EB196DE438743BACBD96461E2C46E543B0C85EE24B46FF041D11510E904C60FEEA8A5AB8DBEC6967CAEBD2183426F66AE7E8781BF640F720F0CCB34AFFA963AE3ED3B705245457904B3779FD4AF6FD5DB136CD01412581E083407D27A2745B7BC4357DBA2A570F2ECC0FD1631A28F55146EEB7FCD679F4B6CAD5D1677C3732C54EE38655513299F38E0D998E7775DD2ED736DD77F458532EB1B538696817744F20FBF7A0884213B10BDEF50FC29EA1F850780E68630B9D6B05E45352D4E2B8AC34B430BA6AAAB95B1431345CBDEE366B4789257A7986A19096D2C63EB38C9E0390FD56C07A22ECC4E3D9CE6CE98A417C3703776747ADBBA4AA2DE3E4C69BF9B9A7920DC6D9D6518723ECE304CBB4FA4FD1D4CD64AF6F07CA7BD23FDEF2E3EF575A22022220222202222022220222202222022220222202222022220222202222022220222202222022220D1BF497F47C760751559D72552DF0A9499712A081BFF002AE3C6560FEEC9E23EC9DFC386B5E5EC623C2AB8FAC46D753C9ED38346B6F883C6DE0BEBB491B258DF1CAD6BE3782D735C2E08E8568BFA42FA34CD80CB579B367F4AF970624CB5B8644DBBA90FDA7C639C7D5BC5BE5EC858905145514EC9A9DEC922905D8F61B8214DF470B7058CF28E709F2ED5064CC754E1AE37961277B7F130F23F22B61309FA3B1CC21B88E153B27A577DA077B0F470FB27C1058DF468E8BC7C432ED66355A281A0D2E1D1D9D5152E6DCBF986307DA36DE797C164C9BD5E375A38FB423E0A8A3A39F15C5A9A922DF2D4CAD8983936E6DF01C5066ED80E47A1CBB929F59053088E244B6307DAEC9A6D7279971B9BF4016538039929A794DE567DA1C1C3910A9C22186828A9E9299A19053C6D8E368E400B0FC97AB2D3B6AD83BDA2666F8E41C8FF009208A1E6BB518B92BA70B8EB7B2469648DE2D3FCF05DC8B7128271C1512700AB1C151270083A92AE8D43B4B755AF6E5CC9E4177E621AD2E71B04829349134E0170F6187EC0FF003FC905A19D728C599B20D6E13531472D44CC3246246823B51C06FE44777F7968954E529700C5A4ABC222924C39FBAA68EE5D240413DE03ED01F103AF15F45AA6420937DC16AC6D2F056E139F6B5D0B74415B6A98C0E5AAFA80FDE05062838592787C978998EAE3C030F2F7106AA5DD0B0F3F123A059283D8F6BF5C6D32DBBA6D604F8D960BC772F666C533E438754523AAB18C49E1B4B0D3779B20248688FC06FE36B6FBA0872364CC5B68D9E68701C1DA5F595B25E59DC2ED8631EDCAFE8D03E26C06F217D49C9594F0DC8D92F0DCBD8245A28A822D0D2477A477173DDF89CE249F3560EC1F63149B28C9BA6A7B39F325780FC42A99BC37A42C3F71B7E3CCDCF4032F0415222202222022220222202222022220222202222022220222202222022220222202222022220222202F2719CCB8465EA6EDB1AAF82919F644AEEF3BC9BC4FB95B9B47CF6CC9B810F560D9714AABB69A23BED6F69E4741F32478AD5CC46BEAF14C425ABC4AA65AAA994DDD2C8EB9239790F0419F716DBE60B4B21661386D6D7D8FFC47DA167CEE7E4ACBAFDBE6609F50A2C370DA669E05E1F2BBE3703E4B15E91D1348E883C0C4B2B6038B63B558A55E1146DA9AA7F692320698E2D5CF4B01B37AEE53E19875361F8898B0EA68A9E1646647B616E90E3C05EDC78F3BAF6348E8A0A06EA9EBE569FBB183EFDFF9041C6857A6CC70DF5CCF30CAE176D1C2F9FC8DB483F172B5BB2BF2596F62B8776B51982A1C2C59042C06DC2EE713FE1419529253B978B886D228686ACD3E194B2E273B7DA313B446DFDF3C7DC0AB4F1BC7E4C4F373B2BE17296C70FF00CF4CDEA41EE03D3AF8903915EBC180C74D10645135AD1EF41EB526D021AD95BF4961CFA078DCDA864A266B7F6AC01D3E40ABD29266D44224611BC6FB1BFF00EFCD639FA27F08F82B8B2DCAFA27FAB48E26377B373C3AA0BBC7351C9C948178398EB5F1529A681DA649458BB98083CBC5B3AD1E1554E8E9E95F5F531DBB8C7863187C5C6FDEF000D97974FB5385D25B15C26A29203FDB452899A3CC0008F815E57D1440E08709D4D2081BFC105F06BE9EB289B5349347343236ED7C66E0AC3DB5FC3FB5A3C2B10D0353647C0E77811A87E47E2BB5598A9C8D89D34AED5F4355BC8A98C708AE400F1E5F95D5CBB48C34556CAAA6A1B67886A21958E1C0824B6E0F4B3BE6835CC32CA99279F0FAFA0C428E6929EA607B98D9E17963DA08B9B386F1C4FC577BB2B725D7C4612EC2662D1EC3D8E3E5723F54176516D3F39517FC2C7EA641D2A1AC947FDC09F9AB8E836EB9A699C3D6E1C36ADBCF542E63BE2D75BE4B1846DD7135DD45D5418833E617E90348F735B8CE0951003C64A5944807B8E9591F2F67ECBB99BBB84E2313A7B6FA797EAE4FE13C7DD75A7A5AB9697C6F6BD8E735ED370E69B11E20F228379C1BAE561CD94ED1E6C52A06019827ED2B9ACFEAB52FDCE980E2C71E6E03783CC5F98DF98C1BA022220222202222022220222202222022220222202222022220222202222022220282B2AE1A0A09EAEA9E19053C6E92479E01A05C953AC3FB6ECCA69B09A7C0699F696AFEBAA2DC7B307737DEEFF0A0C359B7325466CCCF538A4E0B637F760889FF0087182748F3E67C495E169B05316DD34F76C820D29A5761BBDA9641D7D2A3C1E369C3A4906E32CC49F70014F5400A494F46952500D184528E3704FCD055D959652D9CE3ACCAFB3BCE58C3ECE9611108DA7ED485A5AC1FC442C64A79B102729C984B6E1B558847349E2D631DBBE2420F736625E3354725538BAA2A5DAE47BB8924DC93F1BFBD6C37A87E15ADF952A3D5B34D1389B35D20693E6B6B2166B898F03BAF6870F2210789F47FE15C7D1E3EE8570086FD171D979208193B5D4A263B85AE55BB5311AB98C8E1E417AF53AA28E4A66FDB90168EA0AA852587B283C01442DC173EA43A2F7BD57F0A7AAFE1418436AB0B0C705311B8B2C4FC4AE700C7E4C5FD1DB1DC2AB5C5D5982BA386E79C7DA34B0FC88F2685D5DA95589733181BC226DBF4FD159585E26683E9AA626D1E294218EFDA6C8C703F0050743B30A9962D54156C077BA175BDDBFF0045282A488833004F75D707DFB9078B427551B3770DCBB218BAD858B53C8C3ED35FBFE1FE8BD002DC4208742E63680E2E3C00F9A94B5183BB7EA6E814D51351D5C5534B23A2A885E1F1C8D362D70DE0FC56DCE4ACCB166ACAB4D88C6036723454460FB120F6879731E042D466B42C91B1FCCC707CDE30DA97E9A3C4ED1B4726CA2FA4FBF7B7DE106CA22220222202222022220222202222022220222202222022220222202222022220A2491B130BDE4358D04B9C4EE002D46CD98E3F3166DC431375CC53496841E51B77347C003E64AD82DAB639F42E40A90C796CF5EE14ACD3C6CEF68FF082B594EF414694D2AABA5D044C1BDE3A155E9DCB8BDA726DED0BAAD074B113A681FCEE40F9AECB468A78071B44D17F77FAAAA48D92B34C82E175C53C9003EAF25D9FDDC82E104C1CB8201735C78B545DB68DF50C3137EF37BEDFF35339B6B6F1BD04914AE8678E561B3A37070216DD656AD6E239668E706FDCB5FE7F910B502E16C2EC7718F5ACB8FA47BC992136DFCAD7FF003F920CA7A4259461FB935A0EA55D3F695D4EE6F100DFDCA6ECD56C76AA892FC5800BF89DFF00E4A60D083ADA1512DA2A792571DCC6971F20BB45AADDCE789B709CA55B393BCB080835AB36571AECD55B2DEED0ED23DDC7E6BC120120AE5EF3248E7B8DCB8DC95401BF8A0AEF65CB0FD637CD432CAC64A6263259A61C5B18B01EF2A870AB9AE1C5B4ED3C5ACB927C09410518D188D7307B22436F895DF0DB2869A9594CD3A2E5C78B89E2BB28237EE6DFA2A836CD03A0B2A64F640EAE0A4BA0A2D655C6E7C53472C4E2C923707B1C3911BC1F8A5906E41B7194F1B6661CA9418932DAE6880947DD78DCE1F107E2BDD585361D8DF7313C15E4776D53037C3D978FF09F7959AD01111011110111101111011110111101111011110111101111011110111704D906BE6DB719F5ACD14785B1D78E861ED1EDE8F7F5FDD03E2B166B5E8E68C55D8D66EC53102491513B8B2FC980D9A3F8405E50237A0AF526A51DC25C20E4BBEB1BE45561CBAEEE5E6AB69B5D04BA950E9BBC5918D727DD078799E002A5DDE639A1C5A4F02392EB61B2B9F41530BB74B1BF5798413B40639AF716BE6037103BADF2F1F15C837BDCF1515D71741293E2B20ECAF1DFA373476523F4C73817E848FF004BAC7575DAC36B1D4389D3D4B0906278720DCCD564ED178180626DC4F03A7A863F58D01A4FF3E165E93A5D2C73B8D81283D0A4EF44F7FDF793FA7E8BB2175A95BD95246D3C4342975A095617DB663623A0830D8DC6F2386AB74E27F4F82CC134CD8A17BDDECB1A5C7C82D50DA063471ACDF5320712C88E803A1B9BFCEE82D7D564D4A2BA5D04BAC93724870DCD70E2074F11E0A40F2D03B416BFB2F1ECBBDFD7C0AEB97597324A20C3AA2470BDDBA5A3A941DAD4B9D4BA343DA0A46F6CF26FC01E41768106E83871FAC6F8025480F15D726F2F936EA40E4126A4D4A3B84B84174E45C63E84CF785D5B9DA6232F652DCEED0FEE9F85C1F72DB21CD6935ECB6F728E2DF4DE4EC2B10D5A9D514ED2F3F886E77CC141EEA2220222202222022220222202222022220222202222022220222202B773C628707C898C56B4D9F1D339AC3F8DDDD6FCC85712C53B75C47D5B245250B4F7EB6ADB7FD9602E3F3D2835D2EB9D4A3BA5D049A93528EE9741538F741E8E0AABA85E7B9EF0AABA09015D1127AA63314A45A29AED7FF3F05DB0575AB21EDA9C81ED377841DA94189E5A5517544131A9A18653ED01A5FE61704DF820AEE8A3BA5D0674D91E3CE9B0F930F95F77C62C3C7A7EAB293CEA6E9BF1207CD6B0648C65F84E6581E1E5AC7903DF7DDFCF8AD95A499B3CF4AF8CDDAE707DFC2D74171EA4D4A0D69AD05B59FB1DFA1728D54AD3695E2CCF3FFDD96A9C921748E7BCDDCE3725655DB3E3C2A3148B0D81FDD8F7BEC7A123F3B9F7AC481E824BA5D4574BA09975B11797C94D46C370DB3A4B7327FD3F353B08B97BCDA38FBCEF20BA549AA7A89AAA537321DC83D306CC0D1C070F009A94774BA0A81FAC71FC207CD55750DFBEEF21F9AAAE824D49A94774BA09B515B0FB0CC53D6B265550B9FA9F43526DE0D78D43E7A96BA5D657D8462420CDF8861EF7585652EB03AB98E1FA38A0D8B08888088880888808888088880888808888088880888808888088880B5E76F98899731613401DBA9E99D291E2F75BF2605B0CB5336BB5BEB9B55C5AC6ECA711C03C34B05FE64A0B2B526A51EA4D4824D49A947A93520ADC7B83F687EAB9D4A126E1A7C555A9049A93528F526A411521EC2B9F4EEDD1CE2EDF070E1FAA94DDAE21DC42EB55B0BA30F6FB4C37054C6413C31D48FED059FE0E1C5055A93528EE97413B25313C39BC41B85B2BB3CC59B8B60D0381BBE28FBDEFB0FF0035AC85D659776358BB62AF9E8A57D83DA348FE7C6C833D82BAD88558A1C3AA2A1C6DA1848F3E5FCF820710B1FED531C387E567C2C3DF98D86FEBBBF2BA0C0F8FE24FC533056553DC5C1EFEEDF901B82F2AF754EADFBD0BAC105774BA8EEA4899DA49A49B36C4B8F4010455D216D33606EF339B903A0E1F3FC94EC608A1646DE0D0BA70BFD6EB24A923B80D99E5FCFE6BB7A9049A93528F526A4158E2E3D5B655A85A7BC475695C5EE825D49A947A935209AEAECD9A621F476D370392FBA6A8EC1DE21E0B7F32159DA94D4354EA3C469AA59ED412B251E6D703FA20DE5454452365859230DD8F68703E0556808888088880888808888088880888808888088880888808B873B48DEBA9355B6369DE83B65D65A4D9A2BBE91CE78DD581DD9AB6570DFCB59B7CACB6AB16C785353544D7B765139F7BF40569E1949249DE4EF27A9415EA4D4A3D49A9049A92EA3D7E09AFC1055AADA7C8FF003F25C875C2883BEB1DBB800155A9049A93528F5F826BF0412DD75A9AD0D53A95DBA29F7B3C1DFEAA6D4BAF3B4C8C05BB9EC3A9A7A14135ECB9D4A8ED44F4EC9C0B177B63A3B9AA6E826BEE5EF64FC53E8CCD54936A2D05DA49F02ADBD5755B1E59235CDDC41B828372E1A91353472B0775ED042D7FDAEE342B3333692375E3806F1E3C3F4F9ACA995B18F58C910D59777A28F8F43C47E6B5C331577AF662AC9EE5C0C84349E9C020E86A4D4A3D49A904BA94757298E9844CF6EA0DBC9BD7DEB963839DBF7002E4F41CCAEB407B79E4A8737DAEEC63A37920EE44D11C4D637800AB546BF04326EE082BD49A947A93520AEFF58DF3B2E6EA17BBBB7B70DEAB73ACE22DC1057A93528F5F826BF04126A5C5FBA4750A8D49A906E9E49AF188641C0AA81B9968A22EF30D00FCC15708587F64F8E0FF0067787405F7F572F880E803C9FD564EA6C49920DE420F49152D70736E378552022220222202222022220FFFD9)
SET IDENTITY_INSERT [dbo].[Пользователи] OFF
GO
SET IDENTITY_INSERT [dbo].[Предоставление услуг] ON 

INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (1, 1, 34)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (2, 1, 31)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (3, 1, 353)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (4, 1, 336)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (5, 2, 98)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (6, 2, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (7, 2, 89)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (8, 2, 99)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (9, 2, 123)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (10, 3, 92)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (11, 3, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (12, 3, 57)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (13, 3, 88)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (14, 4, 92)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (15, 4, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (16, 4, 57)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (17, 4, 88)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (18, 4, 44)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (19, 5, 98)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (20, 5, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (21, 5, 89)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (22, 5, 353)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (23, 5, 336)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (24, 5, 34)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (25, 6, 34)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (26, 6, 31)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (27, 6, 353)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (28, 6, 337)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (29, 7, 98)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (30, 7, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (31, 7, 89)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (32, 7, 99)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (33, 7, 124)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (34, 8, 92)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (35, 8, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (36, 8, 57)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (37, 8, 89)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (38, 9, 92)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (39, 9, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (40, 9, 57)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (41, 9, 88)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (42, 9, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (43, 10, 98)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (44, 10, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (45, 10, 89)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (46, 10, 353)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (47, 10, 336)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (48, 10, 35)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (49, 11, 34)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (50, 11, 31)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (51, 11, 353)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (52, 11, 338)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (53, 12, 98)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (54, 12, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (55, 12, 89)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (56, 12, 99)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (57, 12, 125)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (58, 13, 92)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (59, 13, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (60, 13, 57)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (61, 13, 90)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (62, 14, 92)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (63, 14, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (64, 14, 57)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (65, 14, 88)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (66, 14, 46)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (67, 15, 98)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (68, 15, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (69, 15, 89)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (70, 15, 353)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (71, 15, 336)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (72, 15, 36)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (73, 16, 34)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (74, 16, 31)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (75, 16, 353)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (76, 16, 339)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (77, 17, 98)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (78, 17, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (79, 17, 89)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (80, 17, 99)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (81, 17, 126)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (82, 18, 92)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (83, 18, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (84, 18, 57)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (85, 18, 91)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (86, 19, 92)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (87, 19, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (88, 19, 57)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (89, 19, 88)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (90, 19, 47)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (91, 20, 98)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (92, 20, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (93, 20, 89)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (94, 20, 353)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (95, 20, 336)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (96, 20, 37)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (97, 21, 34)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (98, 21, 31)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (99, 21, 353)
GO
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (100, 21, 340)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (101, 22, 98)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (102, 22, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (103, 22, 89)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (104, 22, 99)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (105, 22, 127)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (106, 23, 92)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (107, 23, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (108, 23, 57)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (109, 23, 92)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (110, 24, 92)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (111, 24, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (112, 24, 57)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (113, 24, 88)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (114, 24, 48)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (115, 25, 98)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (116, 25, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (117, 25, 89)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (118, 25, 353)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (119, 25, 336)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (120, 25, 38)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (121, 26, 34)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (122, 26, 31)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (123, 26, 353)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (124, 26, 341)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (125, 27, 98)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (126, 27, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (127, 27, 89)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (128, 27, 99)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (129, 27, 128)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (130, 28, 92)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (131, 28, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (132, 28, 57)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (133, 28, 93)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (134, 29, 92)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (135, 29, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (136, 29, 57)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (137, 29, 88)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (138, 29, 49)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (139, 30, 98)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (140, 30, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (141, 30, 89)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (142, 30, 353)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (143, 30, 336)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (144, 30, 39)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (145, 31, 34)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (146, 31, 31)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (147, 31, 353)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (148, 31, 342)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (149, 32, 98)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (150, 32, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (151, 32, 89)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (152, 32, 99)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (153, 32, 129)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (154, 33, 92)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (155, 33, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (156, 33, 57)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (157, 33, 94)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (158, 34, 92)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (159, 34, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (160, 34, 57)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (161, 34, 88)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (162, 34, 50)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (163, 35, 98)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (164, 35, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (165, 35, 89)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (166, 35, 353)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (167, 35, 336)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (168, 35, 40)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (169, 36, 34)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (170, 36, 31)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (171, 36, 353)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (172, 36, 343)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (173, 37, 98)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (174, 37, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (175, 37, 89)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (176, 37, 99)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (177, 37, 130)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (178, 38, 92)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (179, 38, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (180, 38, 57)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (181, 38, 95)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (182, 39, 92)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (183, 39, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (184, 39, 57)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (185, 39, 88)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (186, 39, 51)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (187, 40, 98)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (188, 40, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (189, 40, 89)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (190, 40, 353)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (191, 40, 336)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (192, 40, 41)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (193, 41, 34)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (194, 41, 31)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (195, 41, 353)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (196, 41, 344)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (197, 42, 98)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (198, 42, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (199, 42, 89)
GO
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (200, 42, 99)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (201, 42, 131)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (202, 43, 92)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (203, 43, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (204, 43, 57)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (205, 43, 96)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (206, 44, 92)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (207, 44, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (208, 44, 57)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (209, 44, 88)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (210, 44, 52)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (211, 45, 98)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (212, 45, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (213, 45, 89)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (214, 45, 353)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (215, 45, 336)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (216, 45, 42)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (217, 46, 34)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (218, 46, 31)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (219, 46, 353)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (220, 46, 345)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (221, 47, 98)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (222, 47, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (223, 47, 89)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (224, 47, 99)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (225, 47, 132)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (226, 48, 92)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (227, 48, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (228, 48, 57)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (229, 48, 97)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (230, 49, 92)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (231, 49, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (232, 49, 57)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (233, 49, 88)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (234, 49, 53)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (235, 50, 98)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (236, 50, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (237, 50, 89)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (238, 50, 353)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (239, 50, 336)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (240, 50, 43)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (241, 54, 45)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (242, 54, 44)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (243, 54, 88)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (244, 55, 34)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (245, 55, 99)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (246, 55, 44)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (247, 56, 31)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (248, 57, 34)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (249, 58, 31)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (250, 58, 44)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (251, 59, 34)
INSERT [dbo].[Предоставление услуг] ([Код], [Заказ], [Услуга]) VALUES (252, 59, 45)
SET IDENTITY_INSERT [dbo].[Предоставление услуг] OFF
GO
SET IDENTITY_INSERT [dbo].[Прокат оборудования] ON 

INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (1, 2, 101, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (2, 2, 151, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (3, 2, 201, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (4, 2, 251, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (5, 3, 301, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (6, 3, 152, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (7, 3, 401, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (8, 5, 102, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (9, 5, 153, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (10, 5, 202, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (11, 5, 1, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (12, 8, 302, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (13, 8, 154, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (14, 8, 402, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (15, 8, 203, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (16, 9, 303, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (17, 9, 155, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (18, 9, 403, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (19, 9, 156, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (20, 11, 51, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (21, 12, 103, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (22, 12, 157, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (23, 12, 204, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (24, 12, 252, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (25, 13, 304, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (26, 13, 158, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (27, 13, 404, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (28, 14, 305, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (29, 14, 159, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (30, 14, 405, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (31, 15, 104, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (32, 15, 160, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (33, 15, 205, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (34, 15, 2, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (35, 17, 105, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (36, 17, 161, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (37, 17, 206, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (38, 17, 253, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (39, 18, 306, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (40, 18, 162, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (41, 18, 406, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (42, 21, 52, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (43, 24, 307, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (44, 24, 163, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (45, 24, 407, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (46, 25, 106, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (47, 25, 164, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (48, 25, 207, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (49, 25, 3, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (50, 26, 53, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (51, 27, 107, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (52, 27, 165, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (53, 27, 208, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (54, 27, 254, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (55, 28, 308, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (56, 28, 166, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (57, 28, 408, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (58, 30, 108, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (59, 30, 167, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (60, 30, 209, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (61, 30, 4, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (62, 31, 54, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (63, 35, 109, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (64, 35, 168, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (65, 35, 210, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (66, 35, 5, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (67, 36, 55, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (68, 37, 110, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (69, 37, 169, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (70, 37, 211, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (71, 37, 255, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (72, 38, 309, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (73, 38, 170, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (74, 38, 409, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (75, 39, 310, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (76, 39, 171, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (77, 39, 410, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (78, 41, 56, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (79, 42, 111, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (80, 42, 172, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (81, 42, 212, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (82, 42, 256, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (83, 43, 311, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (84, 43, 173, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (85, 43, 411, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (86, 44, 312, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (87, 44, 174, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (88, 44, 412, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (89, 45, 112, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (90, 45, 175, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (91, 45, 213, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (92, 45, 6, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (93, 46, 57, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (94, 47, 113, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (95, 47, 176, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (96, 47, 214, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (97, 47, 257, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (121, 5, 102, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (122, 5, 153, 2)
GO
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (123, 5, 202, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (124, 5, 1, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (125, 11, 51, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (126, 15, 104, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (127, 15, 160, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (128, 15, 205, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (129, 15, 2, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (130, 21, 52, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (131, 28, 308, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (132, 28, 166, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (133, 28, 408, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (134, 38, 309, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (135, 38, 170, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (136, 38, 409, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (137, 41, 56, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (138, 47, 113, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (139, 47, 176, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (140, 47, 214, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (141, 47, 257, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (142, 5, 122, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (143, 5, 155, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (144, 5, 201, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (145, 5, 1, 1)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (146, 5, 102, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (147, 5, 153, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (148, 5, 202, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (149, 5, 1, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (150, 5, 102, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (151, 5, 153, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (152, 5, 202, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (153, 5, 1, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (154, 5, 122, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (155, 5, 155, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (156, 5, 201, 2)
INSERT [dbo].[Прокат оборудования] ([Код], [Заказ], [Оборудование], [Статус]) VALUES (157, 5, 1, 2)
SET IDENTITY_INSERT [dbo].[Прокат оборудования] OFF
GO
SET IDENTITY_INSERT [dbo].[Сотрудники] ON 

INSERT [dbo].[Сотрудники] ([Код], [Фамилия], [Имя], [Отчество], [Должность]) VALUES (101, N'Иванов', N'Иван', N'Иванович', 3)
INSERT [dbo].[Сотрудники] ([Код], [Фамилия], [Имя], [Отчество], [Должность]) VALUES (102, N'Петров', N'Петр', N'Петрович', 3)
INSERT [dbo].[Сотрудники] ([Код], [Фамилия], [Имя], [Отчество], [Должность]) VALUES (103, N'Федоров', N'Федор', N'Федорович', 1)
INSERT [dbo].[Сотрудники] ([Код], [Фамилия], [Имя], [Отчество], [Должность]) VALUES (104, N'Миронов', N'Вениамин', N'Куприянович', 2)
INSERT [dbo].[Сотрудники] ([Код], [Фамилия], [Имя], [Отчество], [Должность]) VALUES (105, N'Ширяев', N'Ермолай', N'Вениаминович', 2)
INSERT [dbo].[Сотрудники] ([Код], [Фамилия], [Имя], [Отчество], [Должность]) VALUES (106, N'Игнатов', N'Кассиан', N'Васильевич', 2)
INSERT [dbo].[Сотрудники] ([Код], [Фамилия], [Имя], [Отчество], [Должность]) VALUES (107, N'Хохлов', N'Владимир', N'Мэлсович', 3)
INSERT [dbo].[Сотрудники] ([Код], [Фамилия], [Имя], [Отчество], [Должность]) VALUES (108, N'Стрелков', N'Мстислав', N'Георгьевич', 3)
INSERT [dbo].[Сотрудники] ([Код], [Фамилия], [Имя], [Отчество], [Должность]) VALUES (109, N'Беляева', N'Лилия', N'Наумовна', 3)
INSERT [dbo].[Сотрудники] ([Код], [Фамилия], [Имя], [Отчество], [Должность]) VALUES (110, N'Смирнова', N'Ульяна', N'Гордеевна', 3)
SET IDENTITY_INSERT [dbo].[Сотрудники] OFF
GO
INSERT [dbo].[Статусы заказов] ([Код], [Наименование]) VALUES (1, N'Новый')
INSERT [dbo].[Статусы заказов] ([Код], [Наименование]) VALUES (2, N'В прокате')
INSERT [dbo].[Статусы заказов] ([Код], [Наименование]) VALUES (3, N'Закрыт')
GO
INSERT [dbo].[Статусы проката] ([Код], [Наименование]) VALUES (1, N'В прокате')
INSERT [dbo].[Статусы проката] ([Код], [Наименование]) VALUES (2, N'Возвращено')
INSERT [dbo].[Статусы проката] ([Код], [Наименование]) VALUES (3, N'Утеряно')
GO
INSERT [dbo].[Типы входов] ([Код], [Наименование]) VALUES (1, N'Успешно')
INSERT [dbo].[Типы входов] ([Код], [Наименование]) VALUES (2, N'Неуспешно')
GO
INSERT [dbo].[Типы оборудования] ([Код], [Наименование]) VALUES (1, N'Коньки')
INSERT [dbo].[Типы оборудования] ([Код], [Наименование]) VALUES (2, N'Опорное оборудование')
INSERT [dbo].[Типы оборудования] ([Код], [Наименование]) VALUES (3, N'Шлем')
INSERT [dbo].[Типы оборудования] ([Код], [Наименование]) VALUES (4, N'Защитное оборудование')
INSERT [dbo].[Типы оборудования] ([Код], [Наименование]) VALUES (5, N'Детские коньки')
INSERT [dbo].[Типы оборудования] ([Код], [Наименование]) VALUES (6, N'Ватрушка')
INSERT [dbo].[Типы оборудования] ([Код], [Наименование]) VALUES (7, N'Санки')
INSERT [dbo].[Типы оборудования] ([Код], [Наименование]) VALUES (8, N'Салазки')
INSERT [dbo].[Типы оборудования] ([Код], [Наименование]) VALUES (9, N'Ледянка')
GO
INSERT [dbo].[Типы услуг] ([Код], [Наименование]) VALUES (1, N'Услуга')
INSERT [dbo].[Типы услуг] ([Код], [Наименование]) VALUES (2, N'Прокат')
GO
SET IDENTITY_INSERT [dbo].[Услуги] ON 

INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (31, N'JUR8R', N'Прокат опорного оборудования для катка', 500, 2)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (34, N'JKFBJ09', N'Обучение катанию на коньках', 1000, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (35, N'US1', N'Услуга 1', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (36, N'US2', N'Услуга 2', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (37, N'US3', N'Услуга 3', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (38, N'US4', N'Услуга 4', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (39, N'US5', N'Услуга 5', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (40, N'US6', N'Услуга 6', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (41, N'US7', N'Услуга 7', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (42, N'US8', N'Услуга 8', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (43, N'US9', N'Услуга 9', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (44, N'DHBGFY563', N'Прокат салазок', 450, 2)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (45, N'JFH7382', N'Прокат набора защитного оборудования', 800, 2)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (46, N'US10', N'Услуга 10', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (47, N'US11', N'Услуга 11', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (48, N'US12', N'Услуга 12', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (49, N'US13', N'Услуга 13', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (50, N'US14', N'Услуга 14', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (51, N'US15', N'Услуга 15', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (52, N'US16', N'Услуга 16', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (53, N'US17', N'Услуга 17', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (57, N'JHVSJF6', N'Прокат ледянки', 300, 2)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (88, N'DJHGBS982', N'Катание на  катке', 400, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (89, N'OIJNB12', N'Прокат детских коньков', 800, 2)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (90, N'US18', N'Услуга 19', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (91, N'US19', N'Услуга 20', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (92, N'HJBUJE21J', N'Прокат санок', 300, 2)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (93, N'US20', N'Услуга 20', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (94, N'US21', N'Услуга 21', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (95, N'US22', N'Услуга 22', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (96, N'US23', N'Услуга 23', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (97, N'US24', N'Услуга 24', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (98, N'63748HF', N'Прокат шлема', 300, 2)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (99, N'BSFBHV63', N'Прокат вартушки', 100, 2)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (123, N'638VVNQ3', N'Катание на горках', 500, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (124, N'US25', N'Услуга 25', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (125, N'US26', N'Услуга 26', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (126, N'US27', N'Услуга 27', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (127, N'US28', N'Услуга 28', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (128, N'US29', N'Услуга 29', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (129, N'US30', N'Услуга 30', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (130, N'US31', N'Услуга 31', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (131, N'US32', N'Услуга 32', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (132, N'US33', N'Услуга 33', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (336, N'8HFJHG443', N'Прокат коньков', 1200, 2)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (337, N'US34', N'Услуга 34', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (338, N'US35', N'Услуга 35', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (339, N'US36', N'Услуга 36', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (340, N'US37', N'Услуга 37', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (341, N'US38', N'Услуга 38', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (342, N'US39', N'Услуга 39', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (343, N'US40', N'Услуга 40', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (344, N'US41', N'Услуга 41', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (345, N'US42', N'Услуга 42', 100, 1)
INSERT [dbo].[Услуги] ([Код], [Код услуги], [Наименование], [Стоимость (рублей за час)], [Тип]) VALUES (353, N'87FDJKHJ', N'Заточка коньков', 500, 1)
SET IDENTITY_INSERT [dbo].[Услуги] OFF
GO
ALTER TABLE [dbo].[Движения заказов]  WITH CHECK ADD  CONSTRAINT [FK_Движения заказов_Заказы] FOREIGN KEY([Заказ])
REFERENCES [dbo].[Заказы] ([Код])
GO
ALTER TABLE [dbo].[Движения заказов] CHECK CONSTRAINT [FK_Движения заказов_Заказы]
GO
ALTER TABLE [dbo].[Движения заказов]  WITH CHECK ADD  CONSTRAINT [FK_Движения заказов_Статусы заказов] FOREIGN KEY([Статус])
REFERENCES [dbo].[Статусы заказов] ([Код])
GO
ALTER TABLE [dbo].[Движения заказов] CHECK CONSTRAINT [FK_Движения заказов_Статусы заказов]
GO
ALTER TABLE [dbo].[Заказы]  WITH CHECK ADD  CONSTRAINT [FK_Заказы_Клиенты] FOREIGN KEY([Клиент])
REFERENCES [dbo].[Клиенты] ([Код])
GO
ALTER TABLE [dbo].[Заказы] CHECK CONSTRAINT [FK_Заказы_Клиенты]
GO
ALTER TABLE [dbo].[История входов]  WITH CHECK ADD  CONSTRAINT [FK_История входов_Пользователи] FOREIGN KEY([Пользователь])
REFERENCES [dbo].[Пользователи] ([Код])
GO
ALTER TABLE [dbo].[История входов] CHECK CONSTRAINT [FK_История входов_Пользователи]
GO
ALTER TABLE [dbo].[История входов]  WITH CHECK ADD  CONSTRAINT [FK_История входов_Типы входов] FOREIGN KEY([Тип])
REFERENCES [dbo].[Типы входов] ([Код])
GO
ALTER TABLE [dbo].[История входов] CHECK CONSTRAINT [FK_История входов_Типы входов]
GO
ALTER TABLE [dbo].[Оборудование]  WITH CHECK ADD  CONSTRAINT [FK_Оборудование_Типы оборудования] FOREIGN KEY([Тип])
REFERENCES [dbo].[Типы оборудования] ([Код])
GO
ALTER TABLE [dbo].[Оборудование] CHECK CONSTRAINT [FK_Оборудование_Типы оборудования]
GO
ALTER TABLE [dbo].[Пользователи]  WITH CHECK ADD  CONSTRAINT [FK_Пользователи_Сотрудники] FOREIGN KEY([Сотрудник])
REFERENCES [dbo].[Сотрудники] ([Код])
GO
ALTER TABLE [dbo].[Пользователи] CHECK CONSTRAINT [FK_Пользователи_Сотрудники]
GO
ALTER TABLE [dbo].[Предоставление услуг]  WITH CHECK ADD  CONSTRAINT [FK_Предоставление услуг_Заказы] FOREIGN KEY([Заказ])
REFERENCES [dbo].[Заказы] ([Код])
GO
ALTER TABLE [dbo].[Предоставление услуг] CHECK CONSTRAINT [FK_Предоставление услуг_Заказы]
GO
ALTER TABLE [dbo].[Предоставление услуг]  WITH CHECK ADD  CONSTRAINT [FK_Предоставление услуг_Услуги] FOREIGN KEY([Услуга])
REFERENCES [dbo].[Услуги] ([Код])
GO
ALTER TABLE [dbo].[Предоставление услуг] CHECK CONSTRAINT [FK_Предоставление услуг_Услуги]
GO
ALTER TABLE [dbo].[Прокат оборудования]  WITH CHECK ADD  CONSTRAINT [FK_Прокат оборудования_Заказы] FOREIGN KEY([Заказ])
REFERENCES [dbo].[Заказы] ([Код])
GO
ALTER TABLE [dbo].[Прокат оборудования] CHECK CONSTRAINT [FK_Прокат оборудования_Заказы]
GO
ALTER TABLE [dbo].[Прокат оборудования]  WITH CHECK ADD  CONSTRAINT [FK_Прокат оборудования_Оборудование] FOREIGN KEY([Оборудование])
REFERENCES [dbo].[Оборудование] ([Код])
GO
ALTER TABLE [dbo].[Прокат оборудования] CHECK CONSTRAINT [FK_Прокат оборудования_Оборудование]
GO
ALTER TABLE [dbo].[Прокат оборудования]  WITH CHECK ADD  CONSTRAINT [FK_Прокат оборудования_Статусы проката] FOREIGN KEY([Статус])
REFERENCES [dbo].[Статусы проката] ([Код])
GO
ALTER TABLE [dbo].[Прокат оборудования] CHECK CONSTRAINT [FK_Прокат оборудования_Статусы проката]
GO
ALTER TABLE [dbo].[Сотрудники]  WITH CHECK ADD  CONSTRAINT [FK_Сотрудники_Должности] FOREIGN KEY([Должность])
REFERENCES [dbo].[Должности] ([Код])
GO
ALTER TABLE [dbo].[Сотрудники] CHECK CONSTRAINT [FK_Сотрудники_Должности]
GO
ALTER TABLE [dbo].[Услуги]  WITH CHECK ADD  CONSTRAINT [FK_Услуги_Типы услуг] FOREIGN KEY([Тип])
REFERENCES [dbo].[Типы услуг] ([Код])
GO
ALTER TABLE [dbo].[Услуги] CHECK CONSTRAINT [FK_Услуги_Типы услуг]
GO
