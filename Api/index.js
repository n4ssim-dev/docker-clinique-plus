import express from 'express';
import 'dotenv/config';
import cors from 'cors';
import nuitRoutes from './routes/nuitRoutes.js';
import MedecinsRoute from './routes/MedecinsRoute.js';
import appareilRoutes from './routes/appareilRoutes.js';
import analytiqueRoutes from './routes/analytiqueRoutes.js';
import { medecineRoute } from "./controllers/medecineController.js";

import authRoutes from './routes/authRoutes.js';

const app = express();

// Origines autorisées, surchargeables via CORS_ORIGINS (séparées par des virgules)
const corsOrigins = (process.env.CORS_ORIGINS || 'http://localhost:4200,http://localhost:8080')
  .split(',')
  .map((origin) => origin.trim());

app.use(cors({ origin: corsOrigins }));
app.use(express.json());

app.use('/api/nuit', nuitRoutes);
app.use('/api/med', MedecinsRoute);
app.use('/api/appareil', appareilRoutes);
app.use('/api/analytique', analytiqueRoutes);

app.use('/auth', authRoutes);

const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`Server running on port ${port}`));